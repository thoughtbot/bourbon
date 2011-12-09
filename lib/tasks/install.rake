# Needed for pre-3.1.
namespace :bourbon do
  desc "Move files to the Rails assets directory."
  task :install, [:sass_path] do |t, args|
    args.with_defaults :sass_path => 'public/stylesheets/sass'
    source_root = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
    `mkdir -p #{Rails.root}/#{args.sass_path}/bourbon`
    `cp -a #{source_root}/app/assets/stylesheets/* #{Rails.root}/#{args.sass_path}/bourbon`
    `find #{Rails.root}/#{args.sass_path}/bourbon -name "*.css.scss" | while read i; do mv "$i" "${i%.css.scss}.scss"; done`
  end
end
