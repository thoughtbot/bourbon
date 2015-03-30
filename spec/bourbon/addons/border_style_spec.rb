require "spec_helper"

describe "border-style" do
  before(:all) do
    ParserSupport.parse_file("addons/border-style")
  end

  context "called with one style" do
    it "applies same style to all sides" do
      rule = "border-style: solid"

      expect(".border-style-all").to have_rule(rule)
    end
  end

  context "called with two styles" do
    it "applies to alternating sides" do
      rule = "border-style: dotted dashed"

      expect(".border-style-alternate").to have_rule(rule)
    end
  end

  context "called with three styles" do
    it "applies second style to left and right" do
      rule = "border-style: dashed double solid"

      expect(".border-style-implied-left").to have_rule(rule)
    end
  end

  context "called with four styles" do
    it "applies different styles to all sides" do
      rule = "border-style: dotted groove ridge none"

      expect(".border-style-explicit").to have_rule(rule)
    end
  end

  context "called with null values" do
    it "writes rules for other three" do
      ruleset = "border-top-style: inset; " +
                "border-right-style: none; " +
                "border-left-style: double;"
      bad_rule = "border-bottom-style: null;"

      expect(".border-style-false-third").to have_ruleset(ruleset)
      expect(".border-style-false-third").to_not have_rule(bad_rule)
    end
  end
end
