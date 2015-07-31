require "spec_helper"

describe "sibling-count" do
  before(:all) do
    ParserSupport.parse_file("addons/sibling-count")
  end

  context "called with a number" do
    it "applies styles to elements with specific numbers of siblings" do
      rule = "color: #ffffff"

      expect("li:nth-child(1):nth-last-child(1)").to have_rule(rule)
    end
  end

  context "called with a multiple" do
    it "applies styles to elements with specific multiples of siblings" do
      rule = "color: #808080"

      expect("li:nth-child(2n+1):nth-last-child(2n+0)").to have_rule(rule)
      expect("li:nth-child(2n+2):nth-last-child(2n+1)").to have_rule(rule)
    end
  end

  context "called with a multiple and an offset" do
    it "applies styles when number of siblings % multiple == offset" do
      rule = "color: #000000"

      expect("li:nth-child(3n+1):nth-last-child(3n+1)").to have_rule(rule)
      expect("li:nth-child(3n+2):nth-last-child(3n+0)").to have_rule(rule)
      expect("li:nth-child(3n+3):nth-last-child(3n+2)").to have_rule(rule)
    end
  end
end
