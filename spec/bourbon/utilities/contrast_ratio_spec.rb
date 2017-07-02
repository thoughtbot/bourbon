require "spec_helper"

describe "contrast-ratio" do
  before(:all) do
    ParserSupport.parse_file("utilities/contrast-ratio")
  end

  context "calculates between white and black" do
    it "outputs the contrast ratio" do
      rule = "content: 21;"

      expect(".contrast-ratio-black").to have_ruleset(rule)
    end
  end

  context "calculates between white and blue" do
    it "outputs the contrast ratio" do
      rule = "content: 8.59247;"

      expect(".contrast-ratio-blue").to have_ruleset(rule)
    end
  end
end
