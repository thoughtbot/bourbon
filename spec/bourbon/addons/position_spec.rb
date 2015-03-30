require "spec_helper"

describe "position" do
  before(:all) do
    ParserSupport.parse_file("addons/position")
  end

  context "called with one size" do
    it "applies same width to all sides" do
      ruleset = "position: fixed; " +
                "top: 1em; " +
                "right: 1em; " +
                "bottom: 1em; " +
                "left: 1em;"

      expect(".position-all").to have_ruleset(ruleset)
    end
  end

  context "called with two sizes" do
    it "applies to alternating sides" do
      ruleset = "position: absolute; " +
                "top: 2px; " +
                "right: 3px; " +
                "bottom: 2px; " +
                "left: 3px;"

      expect(".position-alternate").to have_ruleset(ruleset)
    end
  end

  context "called with three sizes" do
    it "applies second width to left and right" do
      ruleset = "position: relative; " +
                "top: 4px; " +
                "right: 5px; " +
                "bottom: 6px; " +
                "left: 5px;"

      expect(".position-implied-left").to have_ruleset(ruleset)
    end
  end

  context "called with four sizes" do
    it "applies different widths to all sides" do
      ruleset = "position: fixed; " +
                "top: 7px; " +
                "right: 8px; " +
                "bottom: 9px; " +
                "left: 10px;"

      expect(".position-explicit").to have_ruleset(ruleset)
    end
  end

  context "called with null values" do
    it "writes rules for others" do
      ruleset = "position: static; " +
                "top: 11px; " +
                "left: 13px;"
      bad_rule = "position-bottom: null; position-right: null;"

      expect(".position-false-third").to have_ruleset(ruleset)
      expect(".position-false-third").to_not have_rule(bad_rule)
    end
  end
end
