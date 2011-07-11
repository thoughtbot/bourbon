module Bourbon
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

require "bourbon/sass_extensions"
