Given /^bourbon is already installed$/ do
  set_up_bourbon_directory
  install_bourbon
end

When /^I install bourbon files$/ do
  set_up_bourbon_directory
  install_bourbon
end

When /^I update bourbon files$/ do
  update_bourbon
end

Then /^the sass directories should have been generated$/ do
  sass_directories = ["bourbon/addons", "bourbon/css3", "bourbon/functions"]
  check_directory_presence(sass_directories, true)
end

Then /^the master bourbon partial should have been generated$/ do
  check_file_presence(["bourbon/_bourbon.scss"], true)
end

Then /^the lib files should have been generated$/ do
  check_file_presence(["bourbon/lib/bourbon.rb"], true)
  check_directory_presence(["bourbon/lib/bourbon"], true)
  check_file_presence(["bourbon/lib/bourbon/sass_extensions.rb"], true)
  check_directory_presence(["bourbon/lib/bourbon/sass_extensions"], true)
end

Then /^bourbon should not have been generated$/ do
  check_directory_presence(["bourbon"], false)
end
