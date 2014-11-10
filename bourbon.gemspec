# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bourbon/version"

Gem::Specification.new do |s|
  s.name        = "bourbon"
  s.version     = Bourbon::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Andres Mejia", "Chad Mazzola", "Chris Lloyd", "Gabe Berke-Williams", "J. Edward Dewyea", "Jeremy Raines", "Kyle Fiedler", "Matt Jankowski", "Mike Burns", "Nick Quaranto", "Phil LaPier", "Reda Lemeden", "Travis Haynes", "Tyson Gach"]
  s.email       = ["design+bourbon@thoughtbot.com"]
  s.license     = 'MIT'
  s.homepage    = "http://bourbon.io"
  s.summary     = "A simple and lightweight mixin library for Sass"
  s.description = <<-DESC
Bourbon provides a comprehensive framework of
sass mixins that are designed to be as vanilla as possible. Meaning they
should not deter from the original CSS syntax. The mixins contain vendor
specific prefixes for all CSS3 properties for support amongst modern
browsers. The prefixes also ensure graceful degradation for older browsers
that support only CSS3 prefixed properties.
  DESC

  s.rubyforge_project = "bourbon"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('sass', '~> 3.3')
  s.add_dependency('thor')

  s.add_development_dependency('aruba', '~> 0.4')
  s.add_development_dependency('rake')
end
