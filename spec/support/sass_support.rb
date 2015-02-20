module SassSupport
  def generate_css
    _mkdir("tmp")
    `sass -I . --update spec/fixtures:tmp --quiet`
  end

  def clean_up
    FileUtils.rm_rf("tmp")
  end
end
