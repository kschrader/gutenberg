module Merb
  module GlobalHelpers
    def blog_title
      if Merb::Config[:blog_title]
        return Merb::Config[:blog_title]
      else
        return 'Blog title'
      end
    end

    def blog_subtitle
      if Merb::Config[:blog_subtitle]
        return Merb::Config[:blog_subtitle]
      else
        return 'Some subtitle'
      end
    end
  end
end
