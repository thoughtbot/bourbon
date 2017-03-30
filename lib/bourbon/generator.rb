require "bourbon/version"
require "fileutils"
require "thor"
require "pathname"

module Bourbon
  class Generator < Thor
    map ["-v", "--version"] => :version

    desc "install", "Install Bourbon into your project"
    method_options :path => :string, :force => :boolean
    def install
      if bourbon_files_already_exist? && !options[:force]
        puts "Bourbon files already installed, doing nothing."
      else
        install_files
        puts "Bourbon files installed to #{install_path}/"
      end
    end

    desc "update", "Update Bourbon"
    method_options :path => :string
    def update
      if bourbon_files_already_exist?
        remove_bourbon_directory
        install_files
        puts "Bourbon files updated."
      else
        puts "No existing bourbon installation. Doing nothing."
      end
    end

    desc "version", "Show Bourbon version"
    def version
      say "Bourbon #{Bourbon::VERSION}"
    end

    private

    def bourbon_files_already_exist?
      install_path.exist?
    end

    def install_path
      @install_path ||= if options[:path]
          Pathname.new(File.join(options[:path], "bourbon"))
        else
          Pathname.new("bourbon")
        end
    end

    def install_files
      make_install_directory
      copy_in_scss_files
    end

    def remove_bourbon_directory
      FileUtils.rm_rf("bourbon")
    end

    def make_install_directory
      FileUtils.mkdir_p(install_path)
    end

    def copy_in_scss_files
      FileUtils.cp_r(all_stylesheets, install_path)
    end

    def all_stylesheets
      Dir["#{stylesheets_directory}/*"]
    end

    def stylesheets_directory
      File.join(top_level_directory, "core")
    end

    def top_level_directory
      File.dirname(File.dirname(File.dirname(__FILE__)))
    end
  end
end
