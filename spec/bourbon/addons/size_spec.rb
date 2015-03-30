require "spec_helper"

describe "size" do
  before(:all) do
    ParserSupport.parse_file("addons/size")
  end

  context "called with one size" do
    it "applies same width to both height and width" do
      rule = "height: 10px; width: 10px;"

      expect(".size-implicit").to have_ruleset(rule)
    end
  end

  context "called with two sizes" do
    it "applies to height and width" do
      rule = "height: 2em; width: 1em;"

      expect(".size-both").to have_ruleset(rule)
    end
  end

  context "called with auto" do
    it "applies to auto to height" do
      rule = "height: auto; width: 100px;"

      expect(".size-auto").to have_ruleset(rule)
    end
  end
end
