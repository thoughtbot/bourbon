module BourbonSupport
  def install_bourbon
    run_simple("bundle exec bourbon install")
  end

  def update_bourbon
    run_simple("bundle exec bourbon update")
  end

  def bourbon_path(prefix, path)
    if prefix
      File.join(prefix, 'bourbon', path)
    else
      File.join('bourbon', path)
    end
  end
end

World(BourbonSupport)
