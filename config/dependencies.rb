# dependencies are generated using a strict version, don't forget to edit the dependency versions when upgrading.
merb_gems_version = "1.0.3"
dm_gems_version   = "0.9.7"

dependency "merb-action-args", merb_gems_version
dependency "merb-assets", merb_gems_version
dependency "merb-cache", merb_gems_version
dependency "merb-helpers", merb_gems_version
dependency "merb-mailer", merb_gems_version
dependency "merb-slices", merb_gems_version
dependency "merb-auth-core", merb_gems_version
dependency "merb-auth-more", merb_gems_version
dependency "merb-auth-slice-password", merb_gems_version
dependency "merb-param-protection", merb_gems_version
dependency "merb-exceptions", merb_gems_version
dependency "merb-haml", merb_gems_version

dependency "dm-core", dm_gems_version
dependency "dm-aggregates", dm_gems_version
dependency "dm-migrations", dm_gems_version
dependency "dm-timestamps", dm_gems_version
dependency "dm-types", dm_gems_version
dependency "dm-validations", dm_gems_version
dependency "data_objects", "0.9.8"
dependency "do_mysql", "0.9.8"
dependency "will_paginate", "2.5.0"
dependency "rdiscount", "1.2.11"
dependency "disqus", "0.1.1"
