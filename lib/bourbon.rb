require "bourbon/generator"

bourbon_path = File.expand_path("../../core", __FILE__)
ENV["SASS_PATH"] = File.join([ENV["SASS_PATH"], bourbon_path].compact)
