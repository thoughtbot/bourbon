require "bourbon/generator"

module Bourbon
  if defined?(Rails) && defined?(Rails::Engine)
    class Engine < ::Rails::Engine
      initializer "bourbon.paths", group: :all do |app|
        app.config.assets.paths << File.expand_path("../core", __dir__)
      end
    end
  else
    begin
      require "sass"
      Sass.load_paths << File.expand_path("../core", __dir__)
    rescue LoadError
    end
  end
end
