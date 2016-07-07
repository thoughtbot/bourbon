$:.push File.expand_path("../lib", __FILE__)
require "bourbon/version"

Gem::Specification.new do |s|
  s.add_development_dependency "aruba", "~> 0.6.2"
  s.add_development_dependency "css_parser", "~> 1.4.1"
  s.add_development_dependency "rake", "~> 11.1.2"
  s.add_development_dependency "rspec", "~> 3.4.0"
  s.add_development_dependency "scss_lint", "0.48.0"
  s.add_runtime_dependency "sass", "~> 3.4.22"
  s.add_runtime_dependency "thor", "~> 0.19.1"
  s.authors = [
    "Christian Reuter",
    "Damian Galarza",
    "Gabe Berke-Williams",
    "Hugo Giraudel",
    "Joshua Ogle",
    "Kyle Fiedler",
    "Phil LaPier",
    "Reda Lemeden",
    "Tyson Gach",
    "Will McMahan"
  ]
  s.description = <<-DESC
    Bourbon is a library of pure Sass mixins that are designed to be simple
    and easy to use. No configuration required. The mixins aim to be as
    vanilla as possible, meaning they should be as close to the original
    CSS syntax as possible.
  DESC
  s.email = "design+bourbon@thoughtbot.com"
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.files = `git ls-files`.split("\n")
  s.homepage = "http://bourbon.io"
  s.license = "MIT"
  s.name = "bourbon"
  s.platform = Gem::Platform::RUBY
  s.require_paths = ["lib"]
  s.summary = "A simple and lightweight mixin library for Sass"
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.version = Bourbon::VERSION
end
