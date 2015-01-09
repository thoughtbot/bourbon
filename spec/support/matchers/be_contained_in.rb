RSpec::Matchers.define :be_contained_in do |expected|
  match do |actual|
    @query = ParserSupport.parser.find_by_selector(actual, expected)
    @query.any?
  end

  failure_message_for_should do |actual|
    %{expected selector #{actual} to be container in #{expected}}
  end
end
