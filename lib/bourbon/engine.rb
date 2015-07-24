module Bourbon
  class Engine < Rails::Engine
    config.assets.paths << File.expand_path("../../../core", __FILE__)
  end
end
