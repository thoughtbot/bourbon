module Bourbon::SassExtensions::Functions::FormatColor  
  def format_color(color, format)
    assert_type color, :Color
    assert_type format, :String
    result = case format.value
    when 'hsla'
      "hsla(%d, %d%%, %d%%, %f)" % (color.hsl + [color.alpha])
    when 'hsl'
      "hsl(%d, %d%%, %d%%)" % color.hsl
    when 'rgba'
      "rgba(%d, %d, %d, %f)" % (color.rgb + [color.alpha])
    when 'rgb'
      "rgb(%d, %d, %d)" % color.rgb
    when 'hex' # really just rgb
      "#%s" % color.rgb.map { |c| c.to_s(16) }.join('')
    end
    Sass::Script::String.new(result)
  end
end
