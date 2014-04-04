# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bourbon/version"

Gem::Specification.new do |s|
  s.name        = "bourbon"
  s.version     = Bourbon::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Phil LaPier", "Chad Mazzola", "Matt Jankowski", "Nick Quaranto", "Jeremy Raines", "Mike Burns", "Andres Mejia", "Travis Haynes", "Chris Lloyd", "Gabe Berke-Williams", "J. Edward Dewyea", "Reda Lemeden", "Kyle Fiedler"]
  s.email       = ["support@thoughtbot.com"]
  s.license     = 'MIT'
  s.homepage    = "https://github.com/thoughtbot/bourbon"
  s.summary     = "Bourbon Sass Mixins using SCSS syntax."
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
