require "fileutils"

module Bourbon
  class Generator
    def initialize(arguments)
      @subcommand = arguments.first
    end

    def run
      if @subcommand == "install"
       install
      elsif @subcommand == "update"
        update
      end
    end

    def update
      if bourbon_files_already_exist?
        remove_bourbon_directory
        install_files
        puts "Bourbon files updated."
      else
        puts "No existing bourbon installation. Doing nothing."
      end
    end

    def install
      if bourbon_files_already_exist?
        puts "Bourbon files already installed, doing nothing."
      else
        install_files
        puts "Bourbon files installed to bourbon/"
      end
    end

    private

    def bourbon_files_already_exist?
      File.directory?("bourbon")
    end

    def install_files
      make_lib_directory
      copy_in_sass_extensions
      copy_in_scss_files
    end

    def remove_bourbon_directory
      FileUtils.rm_rf("bourbon")
    end

    def make_lib_directory
      FileUtils.mkdir_p("bourbon/lib/bourbon")
    end

    def copy_in_sass_extensions
      FileUtils.cp(File.join(lib_directory, "bourbon.rb"), "bourbon/lib/")
      FileUtils.cp(File.join(lib_bourbon_directory, "sass_extensions.rb"), "bourbon/lib/bourbon/")
      FileUtils.cp_r(File.join(lib_bourbon_directory, "sass_extensions"), "bourbon/lib/bourbon/")
    end

    def copy_in_scss_files
      FileUtils.cp_r(all_stylesheets, "bourbon/")
    end

    def all_stylesheets
      Dir["#{stylesheets_directory}/*"]
    end

    def stylesheets_directory
      File.join(top_level_directory, "app", "assets", "stylesheets")
    end

    def lib_directory
      File.join(top_level_directory, "lib")
    end

    def lib_bourbon_directory
      File.join(top_level_directory, "lib", "bourbon")
    end

    def top_level_directory
      File.dirname(File.dirname(File.dirname(__FILE__)))
    end
  end
end
