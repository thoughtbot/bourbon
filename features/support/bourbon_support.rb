module BourbonSupport
  def set_up_bourbon_directory
    write_file("Gemfile", "gem 'bourbon', :path => '../../..'")
    run_simple("bundle install")
  end

  def install_bourbon
    run_simple("bundle exec bourbon install")
  end

  def update_bourbon
    run_simple("bundle exec bourbon update")
  end
end

World(BourbonSupport)
