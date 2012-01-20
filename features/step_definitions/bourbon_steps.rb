Given /^bourbon is already generated$/ do
  set_up_bourbon_directory
  generate_bourbon
end

When /^I set up bourbon$/ do
  set_up_bourbon_directory
end

When /^I generate bourbon files$/ do
  generate_bourbon
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
