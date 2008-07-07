#!/usr/bin/env ruby

# Typo 5.x converter for Gutenberg by Kurt Schrader <kurt@karmalab.org>
#
# Slowly being converted from the Typo MT converters

require 'rubygems'
gem 'merb-core'
require 'merb-core'
require File.dirname(__FILE__) + '/../../config/init'
require 'optparse'


class TypoMigrate
  attr_accessor :options

  def initialize
    self.options = {}
    self.parse_options
    Merb.start
    self.convert_categories
    self.convert_entries
    #self.convert_prefs
  end

  def convert_categories
    typo_categories = repository(:default).adapter.query(%{
      SELECT name, permalink
      FROM `#{self.options[:typo_db]}`.categories
    })

    puts "Converting #{typo_categories.size} categories.."

    typo_categories.each do |cat|
      Category.create(cat) unless Category.first(:conditions => {:name => cat['name']})
    end
  end

  def convert_entries
#    default_filter = translate_filter ActiveRecord::Base.connection.select_all(%{
#      SELECT
#        blog_convert_paras
#      FROM `#{self.options[:mt_db]}`.mt_blog
#      WHERE blog_id = '#{self.options[:blog_id]}'
#    })[0]["blog_convert_paras"]

    typo_entries = repository(:default).adapter.query(%{
      SELECT
        title,
        body,
        created_at,
        published_at,
        published
      FROM `#{self.options[:typo_db]}`.contents
      WHERE type='Article'
    })

    puts "Converting #{typo_entries.size} entries.."

    typo_entries.each do |entry|
      a = Post.new(entry)
      a.save
#
#      # Fetch category assignments
#      ActiveRecord::Base.connection.select_all(%{
#        SELECT category_label, placement_is_primary
#        FROM `#{self.options[:mt_db]}`.mt_category, `#{self.options[:mt_db]}`.mt_entry, `#{self.options[:mt_db]}`.mt_placement
#        WHERE entry_id = #{entry['entry_id']}
#        AND category_id = placement_category_id
#        AND entry_id = placement_entry_id
#      }).each do |c|
#        a.categories.push_with_attributes(Category.find_by_name(c['category_label']), :is_primary => c['placement_is_primary'])
#      end
#
#      # Fetch comments
#      ActiveRecord::Base.connection.select_all(%{
#        SELECT
#          comment_author AS author,
#          comment_email AS email,
#          comment_url AS url,
#          comment_text AS body,
#          comment_created_on AS created_at,
#          comment_modified_on AS updated_at
#        FROM `#{self.options[:mt_db]}`.mt_comment
#        WHERE comment_entry_id = #{entry['entry_id']}
#      }).each do |c|
#        a.comments.create(c)
#      end
#
#      # Fetch trackbacks
#      ActiveRecord::Base.connection.select_all(%{
#        SELECT
#          tbping_title AS title,
#          tbping_excerpt AS excerpt,
#          tbping_source_url AS url,
#          tbping_ip AS ip,
#          tbping_blog_name AS blog_name,
#          tbping_created_on AS created_at,
#          tbping_modified_on AS updated_at
#        FROM `#{self.options[:mt_db]}`.mt_tbping, `#{self.options[:mt_db]}`.mt_trackback
#        WHERE tbping_tb_id = trackback_id
#        AND trackback_entry_id = #{entry['entry_id']}
#      }).each do |tb|
#        a.trackbacks.create(tb)
#      end
#    end
  end

#  def convert_prefs
#    puts "Converting prefs"
#
#    ActiveRecord::Base.connection.select_one(%{
#      SELECT
#        blog_name,
#        blog_allow_comments_default AS default_allow_comments,
#        blog_allow_pings_default AS default_allow_pings
#      FROM `#{self.options[:mt_db]}`.mt_blog
#      WHERE blog_id = '#{self.options[:blog_id]}'
#    }).each do |pref_name, pref_value|
#      begin
#        Setting.find_by_name(pref_name).update_attribute("value", pref_value)
#      rescue
#        Setting.create({'name' => pref_name, 'value' => pref_value})
#      end
#    end
#
  end

  def parse_options
    OptionParser.new do |opt|
      opt.banner = "Usage: typo.rb [options]"

      opt.on('--db DBNAME', String, 'Typo database name.') { |d| self.options[:typo_db] = d }
     
      opt.on_tail('-h', '--help', 'Show this message.') do
        puts opt
        exit
      end

      opt.parse!(ARGV)
    end

    unless self.options.include?(:typo_db)
      puts "See typo.rb --help for help."
      exit
    end
  end

  def translate_filter(input)
    return case input
      when /textile/: 'textile'
      when /markdown/ : 'markdown'
      else  nil
    end
  end
end

TypoMigrate.new
