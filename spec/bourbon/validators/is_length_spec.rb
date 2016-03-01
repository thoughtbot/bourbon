require "spec_helper"

describe "is-length" do
  before(:all) do
    ParserSupport.parse_file("validators/is-length")
  end

  context "checks if unitless integer can be represented as a length" do
    it "returns false" do
      expect(".integer").not_to have_rule("color: #fff")
    end
  end

  context "checks if px can be represented as a length" do
    it "returns true" do
      expect(".pixels").to have_rule("color: #fff")
    end
  end

  context "checks if em can be represented as a length" do
    it "returns true" do
      expect(".ems").to have_rule("color: #fff")
    end
  end

  context "checks if percent can be represented as a length" do
    it "returns true" do
      expect(".percent").to have_rule("color: #fff")
    end
  end

  context "parses calculated values" do
    it "returns true" do
      expect(".calc").to have_rule("color: #fff")
    end
  end

  context "checks if strings can be represented as a length" do
    it "returns false" do
      expect(".string").not_to have_rule("color: #fff")
    end
  end

  context "checks if null can be represented as a length" do
    it "returns false" do
      expect(".null").not_to have_rule("color: #fff")
    end
  end
end
