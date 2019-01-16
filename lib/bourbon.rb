require "bourbon/generator"

module Bourbon
  if defined?(Rails) && defined?(Rails::Engine)
    class Engine < ::Rails::Engine
      config.assets.paths << File.expand_path("../../core", __FILE__)
    end
  else
    begin
      require "sass"
      Sass.load_paths << File.expand_path("../../core", __FILE__)
    rescue LoadError; end
  end
end
