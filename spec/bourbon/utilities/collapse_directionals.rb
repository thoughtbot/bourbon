require "spec_helper"

describe "collapse-directionals" do
  before(:all) do
    ParserSupport.parse_file("utilities/collapse-directionals")
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
end
