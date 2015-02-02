require "spec_helper"

describe "px-to-em" do
  before(:all) do
    ParserSupport.parse_file("functions/px-to-em")
  end

  context "called with unitless integer" do
    it "outputs ems" do
      expect(".unitless").to have_rule("font-size: 0.75em")
    end
  end

  context "called with unitless integer and base" do
    it "outputs ems" do
      expect(".unitless-with-base").to have_rule("font-size: 0.66667em")
    end
  end

  context "called with px" do
    it "outputs ems" do
      expect(".px").to have_rule("font-size: 1em")
    end
  end

  context "called with px" do
    it "outputs ems" do
      expect(".px-with-base").to have_rule("font-size: 1.5em")
    end
  end
end
