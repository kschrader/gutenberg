# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rdiscount}
  s.version = "1.2.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Tomayko"]
  s.date = %q{2008-11-02}
  s.email = %q{r@tomayko.com}
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = ["COPYING"]
  s.files = ["README.markdown", "COPYING", "Rakefile", "test/MarkdownTest_1.0", "test/MarkdownTest_1.0.3", "test/benchmark.rb", "test/benchmark.txt", "test/markdown_test.rb", "test/rdiscount_test.rb", "lib/markdown.rb", "lib/rdiscount.rb", "ext/extconf.rb", "ext/docheader.c", "ext/dumptree.c", "ext/generate.c", "ext/markdown.c", "ext/mkdio.c", "ext/rbstrio.c", "ext/rdiscount.c", "ext/resource.c", "ext/amalloc.h", "ext/config.h", "ext/cstring.h", "ext/markdown.h", "ext/mkdio.h", "ext/rbstrio.h"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/rtomayko/rdiscount}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{wink}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Fast Implementation of Gruber's Markdown in C}
  s.test_files = ["test/markdown_test.rb", "test/rdiscount_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
