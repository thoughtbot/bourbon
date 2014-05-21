# CodeKit needs relative paths
dir = File.dirname(__FILE__)
$LOAD_PATH.unshift dir unless $LOAD_PATH.include?(dir)

require "bourbon/generator"

unless defined?(Sass)
  require 'sass'
end

module Bourbon
  if defined?(Rails) && defined?(Rails::Engine)
    class Engine < ::Rails::Engine
      require 'bourbon/engine'
    end

    module Rails
      class Railtie < ::Rails::Railtie
        rake_tasks do
          load "tasks/install.rake"
        end
      end
    end
  else
    bourbon_path = File.expand_path("../../app/assets/stylesheets", __FILE__)
    ENV["SASS_PATH"] = [ENV["SASS_PATH"], bourbon_path].compact.join(File::PATH_SEPARATOR)
  end
end
