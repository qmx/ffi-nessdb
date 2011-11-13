# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nessdb/version"

Gem::Specification.new do |s|
  s.name        = "nessdb"
  s.version     = Nessdb::VERSION
  s.authors     = ["Douglas Campos"]
  s.email       = ["qmx@qmx.me"]
  s.homepage    = ""
  s.summary     = %q{NessDB Ruby wrapper}
  s.description = %q{Embedded Key-Value Store}

  s.rubyforge_project = "nessdb"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "ffi"
end
