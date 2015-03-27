require "spec_helper"

describe "border-color" do
  before(:all) do
    ParserSupport.parse_file("addons/border-color")
  end

  context "called with one color" do
    it "applies same color to all sides" do
      expect(".border-color-all").to have_rule("border-color: #ff0000")
    end
  end

  context "called with two colors" do
    it "applies to alternating sides" do
      expect(".border-color-alternate").to have_rule("border-color: #00ff00 #0000ff")
    end
  end

  context "called with three colors" do
    it "applies second color to left and right" do
      expect(".border-color-implied-left").to have_rule("border-color: #ff0000 #00ff00 #0000ff")
    end
  end

  context "called with four colors" do
    it "applies different colors to all sides" do
      expect(".border-color-explicit").to have_rule("border-color: #0000ff #00ff00 #ff0000 #ffff00")
    end
  end

  context "called with null values" do
    it "writes rules for other three" do
      expect(".border-color-false-third").to have_ruleset("border-top-color: #00ff00; border-right-color: #ffff00; border-left-color: #0000ff;")
      expect(".border-color-false-third").to_not have_rule("border-bottom-color: null;")
    end
  end
end
