require "spec_helper"

describe "str-to-num" do
  before(:all) do
    ParserSupport.parse_file("helpers/str-to-num")
  end

  context "called with integer string" do
    it "is converted to integer" do
      expect(".string-to-integer").to have_rule("height: 10")
    end
  end

  context "called with px string" do
    it "is converted to px" do
      expect(".string-to-px").to have_rule("height: 15px")
    end
  end

  context "called with negative px string" do
    it "is converted to negative px" do
      expect(".string-to-negative-px").to have_rule("height: -25px")
    end
  end
end
