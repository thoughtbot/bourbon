require "spec_helper"

describe "triangle" do
  before(:all) do
    ParserSupport.parse_file("library/triangle")
  end

  context "called with defaults" do
    it "outputs the properties" do
      ruleset = "border-style: solid; " +
                "height: 0; " +
                "width: 0; " +
                "border-color: transparent transparent currentColor; " +
                "border-width: 0 0.5rem 0.5rem;"

      expect(".triangle").to have_ruleset(ruleset)
    end
  end

  context "called with arguments" do
    it "outputs the properties" do
      ruleset = "border-style: solid; " +
                "height: 0; " +
                "width: 0; " +
                "border-color: #b25c9c transparent transparent; " +
                "border-width: 20px 15px 0;"

      expect(".triangle--with-arguments").to have_ruleset(ruleset)
    end
  end
end
