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
                "border-color: transparent transparent #b25c9c; " +
                "border-width: 0 1rem 1rem;"

      expect(".triangle--up").to have_ruleset(ruleset)
    end
  end

  context "called with arguments" do
    it "outputs the properties" do
      ruleset = "border-style: solid; " +
                "height: 0; " +
                "width: 0; " +
                "border-color: transparent transparent transparent #aaa; " +
                "border-width: 6px 0 6px 5px;"

      expect(".triangle--right").to have_ruleset(ruleset)
    end
  end
end
