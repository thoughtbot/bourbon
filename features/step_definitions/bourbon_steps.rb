Given /^bourbon is already installed$/ do
  install_bourbon
end

Given /^I install bourbon to "([^"]*)"$/ do |path|
end

Then /^the sass directories(?: with "([^"]+)" prefix)? should have been generated$/ do |prefix|
  sass_directories = ["addons", "css3", "functions"]
  sass_directories.map!{ |directory| bourbon_path(prefix, directory) }
  check_directory_presence(sass_directories, true)
end

Then /^the master bourbon partial should have been generated(?: within "([^"]+)" directory)?$/ do |prefix|
  check_file_presence([bourbon_path(prefix, '_bourbon.scss')], true)
end

Then /^bourbon should not have been generated$/ do
  check_directory_presence(['bourbon'], false)
end

Then /^the output should contain the current version of Bourbon$/ do
  assert_exact_output("Bourbon #{Bourbon::VERSION}\n", all_output)
end
