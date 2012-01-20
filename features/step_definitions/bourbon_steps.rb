When /^I set up bourbon$/ do
  write_file("Gemfile", "gem 'bourbon', :path => '../../..'")
  run_simple("bundle install")
end
