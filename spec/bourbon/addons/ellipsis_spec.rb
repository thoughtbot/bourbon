require "spec_helper"

describe "ellipsis" do
  before(:all) do
    ParserSupport.parse_file("addons/ellipsis")
  end

  context "called on element" do
    it "adds ellipsis" do
      ruleset = "display: inline-block; " +
                "max-width: 100%; " +
                "overflow: hidden; " +
                "text-overflow: ellipsis; " +
                "white-space: nowrap; " +
                "word-wrap: normal;"

      expect(".ellipsis").to have_ruleset(ruleset)
    end
  end
end
