require "spec_helper"

describe "px-to-rem" do
  before(:all) do
    ParserSupport.parse_file("functions/px-to-rem")
  end

  context "called with unitless integer" do
    it "outputs rems" do
      expect(".unitless").to have_rule("font-size: 0.75rem")
    end
  end

  context "called with px" do
    it "outputs rems" do
      expect(".px").to have_rule("font-size: 1rem")
    end
  end

  context "called with px with modified base" do
    it "outputs rems" do
      expect(".px-with-modified-base").to have_rule("font-size: 1rem")
    end
  end
end
