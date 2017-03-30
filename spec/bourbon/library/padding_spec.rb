require "spec_helper"

describe "padding" do
  before(:all) do
    ParserSupport.parse_file("library/padding")
  end

  context "called with one size" do
    it "applies same width to all sides" do
      rule = "padding: 1px"

      expect(".padding-all").to have_rule(rule)
    end
  end

  context "called with two sizes" do
    it "applies to alternating sides" do
      rule = "padding: 2px 3px"

      expect(".padding-alternate").to have_rule(rule)
    end
  end

  context "called with three sizes" do
    it "applies second width to left and right" do
      rule = "padding: 4px 5px 6px"

      expect(".padding-implied-left").to have_rule(rule)
    end
  end

  context "called with four sizes" do
    it "applies different widths to all sides" do
      rule = "padding: 7px 8px 9px 10px"

      expect(".padding-explicit").to have_rule(rule)
    end
  end

  context "called with null values" do
    it "writes rules for other three" do
      ruleset = "padding-top: 11px; " +
                "padding-right: 12px; " +
                "padding-left: 13px;"
      bad_rule = "padding-bottom: null;"

      expect(".padding-false-third").to have_ruleset(ruleset)
      expect(".padding-false-third").to_not have_rule(bad_rule)
    end
  end
end
