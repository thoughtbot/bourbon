require "spec_helper"

describe "lightness" do
  before(:all) do
    ParserSupport.parse_file("utilities/lightness")
  end

  context "called on black" do
    it "outputs a number between 0 and 1 to indicate lightness" do
      rule = "content: 0;"

      expect(".lightness-black").to have_ruleset(rule)
    end
  end

  context "called on white" do
    it "outputs a number between 0 and 1 to indicate lightness" do
      rule = "content: 1;"

      expect(".lightness-white").to have_ruleset(rule)
    end
  end

  context "called on gray" do
    it "outputs a number between 0 and 1 to indicate lightness" do
      rule = "content: 0.20503;"

      expect(".lightness-gray").to have_ruleset(rule)
    end
  end
end
