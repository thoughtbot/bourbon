module SassSupport
  def generate_css
    FileUtils.mkdir("tmp")
    `sass -I . spec/fixtures:tmp --update --quiet --precision=5 --sourcemap=none`
  end

  def clean_up
    FileUtils.rm_rf("tmp")
  end
end
