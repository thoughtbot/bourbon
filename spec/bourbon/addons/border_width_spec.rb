require "spec_helper"

describe "border-width" do
  before(:all) do
    ParserSupport.parse_file("addons/border-width")
  end

  context "called with one color" do
    it "applies same width to all sides" do
      rule = "border-width: 1px"

      expect(".border-width-all").to have_rule(rule)
    end
  end

  context "called with two widths" do
    it "applies to alternating sides" do
      rule = "border-width: 2px 3px"

      expect(".border-width-alternate").to have_rule(rule)
    end
  end

  context "called with three widths" do
    it "applies second width to left and right" do
      rule = "border-width: 4px 5px 6px"

      expect(".border-width-implied-left").to have_rule(rule)
    end
  end

  context "called with four widths" do
    it "applies different widths to all sides" do
      rule = "border-width: 7px 8px 9px 10px"

      expect(".border-width-explicit").to have_rule(rule)
    end
  end

  context "called with null values" do
    it "writes rules for other three" do
      ruleset = "border-top-width: 11px; " +
                "border-right-width: 12px; " +
                "border-left-width: 13px;"
      bad_rule = "border-bottom-width: null;"

      expect(".border-width-false-third").to have_ruleset(ruleset)
      expect(".border-width-false-third").to_not have_rule(bad_rule)
    end
  end
end
