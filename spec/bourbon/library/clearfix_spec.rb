require "spec_helper"

describe "clearfix" do
  before(:all) do
    ParserSupport.parse_file("library/clearfix")
  end

  context "called on element" do
    it "adds clearfix" do
      input = ".clearfix::after"
      ruleset = "clear: both; " +
                'content: ""; ' +
                "display: block;"

      expect(input).to have_ruleset(ruleset)
    end
  end
end
