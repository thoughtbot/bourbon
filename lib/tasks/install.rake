# Needed for pre-3.1.
namespace :bourbon do
  desc "Move files to the Rails assets directory."
  task :install, [:sass_path] do |t, args|
    args.with_defaults :sass_path => 'public/stylesheets/sass'
    source_root = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
    bourbon_sass_path = Rails.root.join(args.sass_path, 'bourbon').to_s.shellescape
    `mkdir -p #{bourbon_sass_path}`
    `cp -a #{source_root}/app/assets/stylesheets/* #{bourbon_sass_path}`
    `find #{bourbon_sass_path} -name "*.css.scss" | while read i; do mv "$i" "${i%.css.scss}.scss"; done`
  end
end
