require "spec_helper"

describe "border-style" do
  before(:all) do
    ParserSupport.parse_file("addons/border-style")
  end

  context "called with one style" do
    it "applies same style to all sides" do
      expect(".border-style-all").to have_rule("border-style: solid")
    end
  end

  context "called with two styles" do
    it "applies to alternating sides" do
      expect(".border-style-alternate").to have_rule("border-style: dotted dashed")
    end
  end

  context "called with three styles" do
    it "applies second style to left and right" do
      expect(".border-style-implied-left").to have_rule("border-style: dashed double solid")
    end
  end

  context "called with four styles" do
    it "applies different styles to all sides" do
      expect(".border-style-explicit").to have_rule("border-style: dotted groove ridge none")
    end
  end

  context "called with null values" do
    it "writes rules for other three" do
      expect(".border-style-false-third").to have_ruleset("border-top-style: inset; border-right-style: none; border-left-style: double;")
      expect(".border-style-false-third").to_not have_rule("border-bottom-style: null;")
    end
  end
end
