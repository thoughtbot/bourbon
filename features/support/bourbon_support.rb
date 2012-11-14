module BourbonSupport
  def install_bourbon(path = nil)
    if path
      run_simple("bundle exec bourbon install --path '#{path}'")
    else
      run_simple("bundle exec bourbon install")
    end
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
