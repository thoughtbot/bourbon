require "bourbon/generator"

module Bourbon
  if defined?(Rails) && defined?(Rails::Engine)
    class Engine < ::Rails::Engine
      require "bourbon/engine"
    end

    module Rails
      class Railtie < ::Rails::Railtie
        rake_tasks do
          load "tasks/install.rake"
        end
      end
    end
  else
    bourbon_path = File.expand_path("../../core", __FILE__)
    ENV["SASS_PATH"] = [ENV["SASS_PATH"], bourbon_path].compact.join(File::PATH_SEPARATOR)
  end
end
