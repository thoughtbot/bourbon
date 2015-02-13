require "spec_helper"

describe "directional-values" do
  before(:all) do
    ParserSupport.parse_file("helpers/directional-values")
  end

  context "collapse-directionals" do
    it "returns four distinct lengths unaltered" do
      expect(".four").to have_rule("padding: 10px 20px 30px 40px")
    end

    it "returns collapsed horizontal lengths" do
      expect(".three").to have_rule("padding: 5px 10px 5px 20px")
    end

    it "returns collapsed vertical and horizontal lengths" do
      expect(".two").to have_rule("padding: 50px 100px")
    end

    it "returns collapsed lengths when all match" do
      expect(".one").to have_rule("padding: 10px")
    end
  end

  context "directional-property" do
    it "returns property and values with four distinct lengths" do
      expect(".border-all").to have_rule("border-width: 2px 5px 8px 12px")
    end

    it "returns property and value with one length" do
      expect(".border-top").to have_rule("border-top: 10px")
    end

    it "returns property and value with vertical and horizontal values" do
      expect(".border-color").to have_rule("border-color: #ffffff #000000")
    end
  end
end
