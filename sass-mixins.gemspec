Gem::Specification.new do |s|
  s.name        = 'sass-mixins'
  s.version     = '0.0.4'
  s.summary     = "Vanilla Sass Mixins using SCSS syntax."
  s.description = <<-DESC
The purpose of Vanilla Sass Mixins is to provide a comprehensive framework of
sass mixins that are designed to be as vanilla as possible. Meaning they
should not deter from the original CSS syntax. The mixins contain vendor
specific prefixes for all CSS3 properties for support amongst modern
browsers. The prefixes also ensure graceful degradation for older browsers
that support only CSS3 prefixed properties.
  DESC
  s.authors     = ["Phil LaPier", "Chad Mazzola", "Mike Burns"]
  s.email       = 'support@thoughtbot.com'
  s.files       = Dir['**/*']
  s.homepage    = 'https://github.com/thoughtbot/sass-mixins'

  s.add_dependency('sass', '>= 3.1')
end
