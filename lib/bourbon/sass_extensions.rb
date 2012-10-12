module Bourbon::SassExtensions
end

unless defined?(Sass)
  require 'sass'
end

require File.join(File.dirname(__FILE__), '/sass_extensions/functions')
