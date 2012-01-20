module BourbonSupport
  def set_up_bourbon_directory
    write_file("Gemfile", "gem 'bourbon', :path => '../../..'")
    run_simple("bundle install")
  end

  def generate_bourbon
    run_simple("bundle exec bourbon generate")
  end

  def update_bourbon
    run_simple("bundle exec bourbon update")
  end
end

World(BourbonSupport)
