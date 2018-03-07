require "sass"
require "bourbon/generator"

module Bourbon
  if defined?(Rails) && defined?(Rails::Engine)
    class Engine < ::Rails::Engine
      config.assets.paths << File.expand_path("../../core", __FILE__)
    end
  else
    Sass.load_paths << File.expand_path("../../core", __FILE__)
  end
end
