# Go to http://wiki.merbivore.com/pages/init-rb

require 'config/dependencies.rb'

use_orm :datamapper
use_test :rspec
use_template_engine :haml

Merb::Config.use do |c|
  c[:use_mutex] = false
  c[:session_store] = 'cookie'  # can also be 'memory', 'memcache', 'container', 'datamapper

  # cookie session store configuration
  c[:session_secret_key]  = 'bbed00b9d3a65c26255628cfbef6e11f37a1802f'  # required for cookie session store
  # c[:session_id_key] = '_session_id' # cookie session id key, defaults to "_session_id"
  c[:blog_title] = 'Schrade.Blog'
  c[:blog_subtitle] = 'Tech and Business Ramblings by Kurt Schrader :: <a href="http://karmalab.org/~kschrader">About</a>'
end

Merb::BootLoader.before_app_loads do
  # This will get executed after dependencies have been loaded but before your app's classes have loaded.
end

Merb::BootLoader.after_app_loads do

  Disqus::defaults[:account] = "kschrader"
  # This will get executed after your app's classes have been loaded.
end
