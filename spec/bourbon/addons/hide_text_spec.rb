require "spec_helper"

describe "hide-text" do
  before(:all) do
    ParserSupport.parse_file("addons/hide-text")
  end

  context "called on element" do
    it "adds hide-text" do
      ruleset = "overflow: hidden; " +
                "text-indent: 101%; " +
                "white-space: nowrap;"

      expect(".hide-text").to have_ruleset(ruleset)
    end
  end
end
