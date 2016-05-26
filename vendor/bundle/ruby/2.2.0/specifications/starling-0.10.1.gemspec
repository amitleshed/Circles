# -*- encoding: utf-8 -*-
# stub: starling 0.10.1 ruby lib

Gem::Specification.new do |s|
  s.name = "starling"
  s.version = "0.10.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Blaine Cook", "Chris Wanstrath", "Britt Selvitelle", "Glenn Rempe", "Abdul-Rahman Advany", "Seth Fitzsimmons", "Harm Aarts", "Chris Gaffney"]
  s.date = "2010-01-19"
  s.description = "Starling is a light-weight, persistent queue server that speaks the memcached protocol. It was originally developed for Twitter's backend."
  s.email = ["blaine@twitter.com", "chris@ozmm.org", "abdulrahman@advany.com", "starlingmq@groups.google.com", "harmaarts@gmail.com", "gaffneyc@gmail.com"]
  s.executables = ["starling", "starling_top"]
  s.extra_rdoc_files = ["CHANGELOG", "LICENSE", "README.rdoc"]
  s.files = ["CHANGELOG", "LICENSE", "README.rdoc", "bin/starling", "bin/starling_top"]
  s.homepage = "http://github.com/starling/starling/"
  s.rdoc_options = ["--quiet", "--title", "starling documentation", "--opname", "index.html", "--line-numbers", "--main", "README.rdoc", "--inline-source"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Starling is a lightweight, transactional, distributed queue server"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<memcache-client>, [">= 1.7.0"])
      s.add_runtime_dependency(%q<eventmachine>, [">= 0.12.0"])
    else
      s.add_dependency(%q<memcache-client>, [">= 1.7.0"])
      s.add_dependency(%q<eventmachine>, [">= 0.12.0"])
    end
  else
    s.add_dependency(%q<memcache-client>, [">= 1.7.0"])
    s.add_dependency(%q<eventmachine>, [">= 0.12.0"])
  end
end
