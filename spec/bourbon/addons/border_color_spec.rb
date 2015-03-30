require "spec_helper"

describe "border-color" do
  before(:all) do
    ParserSupport.parse_file("addons/border-color")
  end

  context "called with one color" do
    it "applies same color to all sides" do
      rule = "border-color: #ff0000"

      expect(".border-color-all").to have_rule(rule)
    end
  end

  context "called with two colors" do
    it "applies to alternating sides" do
      rule = "border-color: #00ff00 #0000ff"

      expect(".border-color-alternate").to have_rule(rule)
    end
  end

  context "called with three colors" do
    it "applies second color to left and right" do
      rule = "border-color: #ff0000 #00ff00 #0000ff"

      expect(".border-color-implied-left").to have_rule(rule)
    end
  end

  context "called with four colors" do
    it "applies different colors to all sides" do
      rule = "border-color: #0000ff #00ff00 #ff0000 #ffff00"

      expect(".border-color-explicit").to have_rule(rule)
    end
  end

  context "called with null values" do
    it "writes rules for other three" do
      ruleset = "border-top-color: #00ff00; " +
                "border-right-color: #ffff00; " +
                "border-left-color: #0000ff;"
      bad_rule = "border-bottom-color: null;"

      expect(".border-color-false-third").to have_ruleset(ruleset)
      expect(".border-color-false-third").to_not have_rule(bad_rule)
    end
  end
end
