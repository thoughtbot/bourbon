require "bourbon/generator"

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
  end
end

require File.join(File.dirname(__FILE__), "/bourbon/sass_extensions")
