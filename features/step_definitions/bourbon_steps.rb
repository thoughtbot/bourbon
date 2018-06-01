Given /^bourbon is already installed$/ do
  install_bourbon
end

Given /^I install bourbon to "([^"]*)"$/ do |path|
end

Then /^the sass directories(?: with "([^"]+)" prefix)? should have been generated$/ do |prefix|
  sass_directories = [
    "bourbon/helpers",
    "bourbon/library",
    "bourbon/settings",
    "bourbon/utilities",
    "bourbon/validators",
  ]
  sass_directories.map!{ |directory| bourbon_path(prefix, directory) }
  sass_directories.each do |sass_directory|
    expect(sass_directory).to be_an_existing_directory
  end
end

Then /^the master bourbon partial should have been generated(?: within "([^"]+)" directory)?$/ do |prefix|
  expect(bourbon_path(prefix, "_bourbon.scss")).to be_an_existing_file
end

Then /^bourbon should not have been generated$/ do
  expect("bourbon").not_to be_an_existing_directory
end

Then /^the output should contain the current version of Bourbon$/ do
  expect(last_command_started).to have_output "Bourbon #{Bourbon::VERSION}"
end
