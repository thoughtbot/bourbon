When /^I set up bourbon$/ do
  write_file("Gemfile", "gem 'bourbon', :path => '../../..'")
  run_simple("bundle install")
end

When /^I generate bourbon files$/ do
  run_simple("bundle exec bourbon generate")
end

Then /^the sass directories should have been generated$/ do
  sass_directories = ["bourbon/addons", "bourbon/css3", "bourbon/functions"]
  check_directory_presence(sass_directories, true)
end

Then /^the master bourbon partial should have been generated$/ do
  check_file_presence(["bourbon/_bourbon.scss"], true)
end

Then /^the lib files should have been generated$/ do
  check_file_presence(["bourbon/lib/sass_extensions.rb"], true)
  check_directory_presence(["bourbon/lib/sass_extensions"], true)
end
