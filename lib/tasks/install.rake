# Needed for pre-3.1.
namespace :sass_mixins do
  desc "Move files to the Rails assets directory."
  task :install do
    source_root = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
    `mkdir #{Rails.root}/public/stylesheets/sass`
    `cp -a #{source_root}/app/assets/* #{Rails.root}/public/stylesheets/sass`
  end
end
