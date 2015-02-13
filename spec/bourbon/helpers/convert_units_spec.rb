require "spec_helper"

describe "convert-units" do
  before(:all) do
    ParserSupport.parse_file("helpers/convert-units")
  end

  context "called with integer and px" do
    it "is converted to px length" do
      expect(".px").to have_rule("height: 12px")
    end
  end

  context "called with integer and pt" do
    it "is converted to points" do
      expect(".pt").to have_rule("font-size: 16pt")
    end
  end

  context "called with integer and deg" do
    it "is converted to degrees" do
      expect(".deg").to have_rule("transform: rotate(180deg)")
    end
  end

  context "called with string and px" do
    it "returns false" do
      expect(".string").to have_rule("padding-top: false")
    end
  end
end
