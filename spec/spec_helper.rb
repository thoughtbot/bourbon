$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require "rspec"
require "bourbon"
require "aruba/api"
require "css_parser"
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.include SassSupport
  config.include CssParser
  config.include ParserSupport
  config.include Aruba::Api

  config.before(:all) do
    generate_css
  end

  config.after(:all) do
    clean_up
  end
end
