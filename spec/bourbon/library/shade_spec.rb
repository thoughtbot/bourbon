require "spec_helper"

describe "shade" do
  before(:all) do
    ParserSupport.parse_file("library/shade")
  end

  context "called on white" do
    it "shades white" do
      expect(".shade-white").to have_rule("color: #404040")
    end
  end

  context "called on black" do
    it "still returns black" do
      expect(".shade-black").to have_rule("color: black")
    end
  end

  context "called on red" do
    it "shades red" do
      expect(".shade-red").to have_rule("color: #bf0000")
    end
  end

  context "called on gray" do
    it "shades gray" do
      expect(".shade-gray").to have_rule("color: #171717")
    end
  end
end
