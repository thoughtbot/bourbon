$:.push File.expand_path("../lib", __FILE__)
require "bourbon/version"

Gem::Specification.new do |s|
  s.add_development_dependency "aruba", "~> 0.14"
  s.add_development_dependency "css_parser", "~> 1.4"
  s.add_development_dependency "cucumber", "~> 2.0"
  s.add_development_dependency "rake", "~> 11.1"
  s.add_development_dependency "rspec", "~> 3.4"
  s.add_development_dependency "scss_lint", "0.48"
  s.add_runtime_dependency "sass", "~> 3.4"
  s.add_runtime_dependency "thor", "~> 0.19"
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
    Bourbon is a library of pure Sass mixins and functions that are designed to
    make you a more efficient developer.
  DESC
  s.email = "design+bourbon@thoughtbot.com"
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.files = `git ls-files`.split("\n")
  s.homepage = "https://www.bourbon.io/"
  s.license = "MIT"
  s.name = "bourbon"
  s.platform = Gem::Platform::RUBY
  s.require_paths = ["lib"]
  s.summary = "A lightweight Sass tool set."
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.version = Bourbon::VERSION
end
