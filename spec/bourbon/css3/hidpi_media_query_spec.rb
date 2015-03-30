require "spec_helper"

describe "hidpi-media-query" do
  before(:all) do
    ParserSupport.parse_file("css3/hidpi-media-query")
  end

  context "called with defaults" do
    it "outputs defaults" do
      rule = "color: #ff0000"

      expect(".hidpi-defaults").to have_rule(rule)
    end
  end

  context "called with ratio" do
    it "outputs ratio" do
      rule = "color: #00ff00"

      expect(".hidpi-ratio").to have_rule(rule)
    end
  end
end
