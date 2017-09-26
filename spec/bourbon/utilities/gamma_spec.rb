require "spec_helper"

describe "gamma" do
  before(:all) do
    ParserSupport.parse_file("utilities/gamma")
  end

  context "called on a color channel" do
    it "outputs a gamma value between 0 and 1" do
      rule = "content: 0.12168;"

      expect(".gamma").to have_ruleset(rule)
    end
  end

  context "called on a full color channel" do
    it "outputs a gamma value between 0 and 1" do
      rule = "content: 1;"

      expect(".gamma-full").to have_ruleset(rule)
    end
  end
end
