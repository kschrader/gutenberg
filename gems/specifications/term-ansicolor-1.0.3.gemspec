# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{term-ansicolor}
  s.version = "1.0.3"

  s.required_rubygems_version = nil if s.respond_to? :required_rubygems_version=
  s.authors = ["Florian Frank"]
  s.cert_chain = nil
  s.date = %q{2007-10-04}
  s.description = %q{}
  s.email = %q{flori@ping.de}
  s.files = ["install.rb", "lib", "make_doc.rb", "CHANGES", "README.en", "VERSION", "Rakefile", "GPL", "examples", "lib/term", "lib/term/ansicolor.rb", "examples/cdiff.rb", "examples/example.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://term-ansicolor.rubyforge.org}
  s.rdoc_options = ["--title", "Term::ANSIColor", "--inline-source", "--line-numbers"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new("> 0.0.0")
  s.rubyforge_project = %q{term-ansicolor}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Ruby library that colors strings using ANSI escape sequences}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 1

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
