require "spec_helper"

describe "compact-shorthand" do
  before(:all) do
    ParserSupport.parse_file("utilities/compact-shorthand")
  end

  context "compact-shorthand" do
    it "returns four values unaltered" do
      expect(".four-values-a").to have_rule("padding: 10px 20px 30px 40px")
    end

    it "returns four values when the left and right values are not equal" do
      expect(".four-values-b").to have_rule("padding: 5px 10px 5px 20px")
    end

    it "compacts four values to two values when the top/bottom and " +
       "left/right values are equal" do
      expect(".two-values").to have_rule("padding: 50px 100px")
    end

    it "compacts four values to one value when they all match" do
      expect(".one-value").to have_rule("padding: 10px")
    end

    it "skips null values" do
      expect(".null-value").to have_rule("padding: 10px 20px")
    end
  end
end
