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
                "border-top: 6px solid gray;"

      expect(input).to have_ruleset(ruleset)
    end
  end

  context "called on element with corner arguments" do
    it "adds triangle on corner" do
      input = ".triangle-corner"
      ruleset = "border-top-color: #00ff00; " +
                "border-right-color: #ffff00; " +
                "border-left-color: #0000ff"

      expect(input).to have_ruleset(ruleset)
    end
  end
end
