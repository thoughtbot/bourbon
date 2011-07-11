# Compact function pulled from compass
module Bourbon::SassExtensions::Functions::Compact

  def compact(*args)
    sep = :comma
    if args.size == 1 && args.first.is_a?(Sass::Script::List)
      args = args.first.value
      sep = args.first.separator
    end
    Sass::Script::List.new(args.reject{|a| !a.to_bool}, sep)
  end

end
