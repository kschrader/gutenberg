# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{disqus}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Norman Clarke"]
  s.date = %q{2008-09-03}
  s.description = %q{Integrates Disqus into your Ruby-powered site. Works with any Ruby website, and has view helpers for Rails and Merb.}
  s.email = %q{norman@randomba.org}
  s.extra_rdoc_files = ["README.textile"]
  s.files = ["MIT-LICENSE", "README.textile", "init.rb", "lib/disqus.rb", "lib/disqus/widget.rb", "lib/disqus/view_helpers.rb", "Rakefile", "test/widget_test.rb", "test/view_helpers_test.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://randomba.org}
  s.rdoc_options = ["--main", "README.textile", "--inline-source", "--line-numbers"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{disqus}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Integrates Disqus commenting system into your Ruby-powered site.}
  s.test_files = ["test/widget_test.rb", "test/view_helpers_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
