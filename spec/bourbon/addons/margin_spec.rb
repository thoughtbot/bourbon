require "spec_helper"

describe "margin" do
  before(:all) do
    ParserSupport.parse_file("addons/margin")
  end

  context "called with one size" do
    it "applies same width to all sides" do
      rule = "margin: 1px"

      expect(".margin-all").to have_rule(rule)
    end
  end

  context "called with two sizes" do
    it "applies to alternating sides" do
      rule = "margin: 2px 3px"

      expect(".margin-alternate").to have_rule(rule)
    end
  end

  context "called with three sizes" do
    it "applies second width to left and right" do
      rule = "margin: 4px 5px 6px"

      expect(".margin-implied-left").to have_rule(rule)
    end
  end

  context "called with four sizes" do
    it "applies different widths to all sides" do
      rule = "margin: 7px 8px 9px 10px"

      expect(".margin-explicit").to have_rule(rule)
    end
  end

  context "called with null values" do
    it "writes rules for other three" do
      ruleset = "margin-top: 11px; " +
                "margin-right: 12px; " +
                "margin-left: 13px;"
      bad_rule = "margin-bottom: null;"

      expect(".margin-false-third").to have_ruleset(ruleset)
      expect(".margin-false-third").to_not have_rule(bad_rule)
    end
  end
end
