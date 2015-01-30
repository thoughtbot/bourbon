require "spec_helper"

describe "is-light" do
  before(:all) do
    ParserSupport.parse_file("functions/is-light")
  end

  context "takes a light color" do
    it "and returns true" do
      expect(".pink").to have_rule("color: #000")
    end
  end

  context "takes a medium-light color" do
    it "and returns true" do
      expect(".sky").to have_rule("color: #000")
    end
  end

  context "takes a medium-dark color" do
    it "and returns false" do
      expect(".medium-gray").to have_rule("color: #fff")
    end
  end

  context "takes a dark color" do
    it "and returns false" do
      expect(".charcoal").to have_rule("color: #fff")
    end
  end

  context "takes a translucent color" do
    it "and processes as an opaque color" do
      expect(".translucent").to have_rule("color: #000")
    end
  end
end
