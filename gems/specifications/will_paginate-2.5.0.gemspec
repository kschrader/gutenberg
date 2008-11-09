# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{will_paginate}
  s.version = "2.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mislav Marohni\304\207", "PJ Hyett"]
  s.date = %q{2008-11-09}
  s.description = %q{The will_paginate library provides a simple, yet powerful and extensible API for pagination and rendering of page links in templates.}
  s.email = %q{mislav.marohnic@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "LICENSE", "CHANGELOG.rdoc"]
  s.files = ["CHANGELOG.rdoc", "LICENSE", "README.rdoc", "Rakefile", "examples", "examples/apple-circle.gif", "examples/index.haml", "examples/index.html", "examples/pagination.css", "examples/pagination.sass", "init.rb", "lib", "lib/will_paginate", "lib/will_paginate.rb", "lib/will_paginate/array.rb", "lib/will_paginate/collection.rb", "lib/will_paginate/core_ext.rb", "lib/will_paginate/deprecation.rb", "lib/will_paginate/finders", "lib/will_paginate/finders.rb", "lib/will_paginate/finders/active_record", "lib/will_paginate/finders/active_record.rb", "lib/will_paginate/finders/active_record/named_scope.rb", "lib/will_paginate/finders/active_record/named_scope_patch.rb", "lib/will_paginate/finders/active_resource.rb", "lib/will_paginate/finders/base.rb", "lib/will_paginate/finders/data_mapper.rb", "lib/will_paginate/version.rb", "lib/will_paginate/view_helpers", "lib/will_paginate/view_helpers.rb", "lib/will_paginate/view_helpers/action_view.rb", "lib/will_paginate/view_helpers/base.rb", "lib/will_paginate/view_helpers/link_renderer.rb", "lib/will_paginate/view_helpers/link_renderer_base.rb", "spec", "spec/collection_spec.rb", "spec/console", "spec/console_fixtures.rb", "spec/database.yml", "spec/finders", "spec/finders/active_record_spec.rb", "spec/finders/active_resource_spec.rb", "spec/finders/activerecord_test_connector.rb", "spec/finders_spec.rb", "spec/fixtures", "spec/fixtures/admin.rb", "spec/fixtures/developer.rb", "spec/fixtures/developers_projects.yml", "spec/fixtures/project.rb", "spec/fixtures/projects.yml", "spec/fixtures/replies.yml", "spec/fixtures/reply.rb", "spec/fixtures/schema.rb", "spec/fixtures/topic.rb", "spec/fixtures/topics.yml", "spec/fixtures/user.rb", "spec/fixtures/users.yml", "spec/rcov.opts", "spec/spec.opts", "spec/spec_helper.rb", "spec/tasks.rake", "spec/view_helpers", "spec/view_helpers/action_view_spec.rb", "spec/view_helpers/base_spec.rb", "spec/view_helpers/link_renderer_base_spec.rb", "spec/view_helpers/view_example_group.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/mislav/will_paginate/wikis}
  s.rdoc_options = ["--main", "README.rdoc", "--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Most awesome pagination solution for every web app}
  s.test_files = ["spec/collection_spec.rb", "spec/console", "spec/console_fixtures.rb", "spec/database.yml", "spec/finders", "spec/finders/active_record_spec.rb", "spec/finders/active_resource_spec.rb", "spec/finders/activerecord_test_connector.rb", "spec/finders_spec.rb", "spec/fixtures", "spec/fixtures/admin.rb", "spec/fixtures/developer.rb", "spec/fixtures/developers_projects.yml", "spec/fixtures/project.rb", "spec/fixtures/projects.yml", "spec/fixtures/replies.yml", "spec/fixtures/reply.rb", "spec/fixtures/schema.rb", "spec/fixtures/topic.rb", "spec/fixtures/topics.yml", "spec/fixtures/user.rb", "spec/fixtures/users.yml", "spec/rcov.opts", "spec/spec.opts", "spec/spec_helper.rb", "spec/tasks.rake", "spec/view_helpers", "spec/view_helpers/action_view_spec.rb", "spec/view_helpers/base_spec.rb", "spec/view_helpers/link_renderer_base_spec.rb", "spec/view_helpers/view_example_group.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
