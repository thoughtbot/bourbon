require "spec_helper"

describe "border-color" do
  before(:all) do
    ParserSupport.parse_file("library/border-color")
  end

  context "called with one color" do
    it "applies same color to all sides" do
      rule = "border-color: #f00"

      expect(".border-color-all").to have_rule(rule)
    end
  end

  context "called with two colors" do
    it "applies to alternating sides" do
      rule = "border-color: #0f0 #00f"

      expect(".border-color-alternate").to have_rule(rule)
    end
  end

  context "called with three colors" do
    it "applies second color to left and right" do
      rule = "border-color: #f00 #0f0 #00f"

      expect(".border-color-implied-left").to have_rule(rule)
    end
  end

  context "called with four colors" do
    it "applies different colors to all sides" do
      rule = "border-color: #00f #0f0 #f00 #ff0"

      expect(".border-color-explicit").to have_rule(rule)
    end
  end

  context "called with null values" do
    it "writes rules for other three" do
      ruleset = "border-top-color: #0f0; " +
                "border-right-color: #ff0; " +
                "border-left-color: #00f;"
      bad_rule = "border-bottom-color: null;"

      expect(".border-color-false-third").to have_ruleset(ruleset)
      expect(".border-color-false-third").to_not have_rule(bad_rule)
    end
  end
end
