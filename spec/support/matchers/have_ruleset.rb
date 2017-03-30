RSpec::Matchers.define :have_ruleset do |expected|
  match do |selector|
    @ruleset = rules_from_selector(selector)
    @ruleset.join("; ") == expected
  end

  failure_message do |selector|
    if @ruleset.empty?
      %{no CSS for selector #{selector} were found}
    else
      ruleset = @ruleset.join("; ")
      %{Expected selector #{selector} to have CSS rule "#{expected}".
        Had "#{ruleset}".}
    end
  end

  def rules_from_selector(selector)
    ParserSupport.parser.find_by_selector(selector)
  end
end
