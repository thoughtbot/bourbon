module Bourbon::SassExtensions::Functions
end

require File.join(File.dirname(__FILE__), "/functions/compact")
require File.join(File.dirname(__FILE__), "/functions/format_color")

module Sass::Script::Functions
  include Bourbon::SassExtensions::Functions::Compact
  include Bourbon::SassExtensions::Functions::FormatColor
end

# Wierd that this has to be re-included to pick up sub-modules. Ruby bug?
class Sass::Script::Functions::EvaluationContext
  include Sass::Script::Functions
end
