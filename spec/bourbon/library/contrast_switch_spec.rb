require "spec_helper"

describe "contrast-switch" do
  before(:all) do
    ParserSupport.parse_file("library/contrast-switch")
  end

  context "called with a light base color" do
    it "outputs the dark color" do
      rule = "color: #000;"

      expect(".contrast-switch-light-base").to have_ruleset(rule)
    end
  end

  context "called with a dark base color" do
    it "outputs the light color" do
      rule = "color: #eee;"

      expect(".contrast-switch-dark-base").to have_ruleset(rule)
    end
  end
end
