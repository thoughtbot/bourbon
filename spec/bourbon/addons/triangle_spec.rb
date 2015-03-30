require "spec_helper"

describe "triangle" do
  before(:all) do
    ParserSupport.parse_file("addons/triangle")
  end

  context "called on element" do
    it "adds triangle" do
      input = ".triangle-down"
      ruleset = "height: 0; " +
                "width: 0; " +
                "border-left: 6px solid transparent; " +
                "border-right: 6px solid transparent; " +
                "border-top: 6px solid #ffffff;"

      expect(input).to have_ruleset(ruleset)
    end
  end

  context "called on element with corner arguments" do
    it "adds triangle on corner" do
      input = ".triangle-corner"
      ruleset = "height: 0; " +
                "width: 0; " +
                "border-top: 6px solid #000000; " +
                "border-right: 12px solid #aaaaaa;"

      expect(input).to have_ruleset(ruleset)
    end
  end
end
