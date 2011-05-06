# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "guard-jmx/version"

Gem::Specification.new do |s|
  s.name        = "guard-jmx"
  s.version     = Guard::JMXVersion::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nick Sieger"]
  s.email       = ["nick@nicksieger.com"]
  s.homepage    = ""
  s.summary     = %q{Expose Guard interactor operations via JMX}
  s.description = %q{To use with guard, simply 'require "guard-jmx"'
  in your Guardfile.}

  s.rubyforge_project = "guard-jmx"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "guard", ">= 0.3"
  s.add_dependency "jmx", ">= 0.7"
end
