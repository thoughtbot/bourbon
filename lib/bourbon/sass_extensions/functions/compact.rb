# Compact function pulled from compass
module Bourbon::SassExtensions::Functions::Compact

  def compact(*args)
    sep = :comma
    if args.size == 1 && args.first.is_a?(Sass::Script::List)
      sep = args.first.separator
      args = args.first.value
    end
    Sass::Script::List.new(args.reject{|a| !a.to_bool}, sep)
  end

end
