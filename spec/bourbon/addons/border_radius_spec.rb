require "spec_helper"

describe "border-radius" do
  before(:all) do
    ParserSupport.parse_file("addons/border-radius")
  end

  context "called with one argument" do
    it "applies to correct sides" do
      top = "border-top-left-radius: 1em; " +
            "border-top-right-radius: 1em;"
      left = "border-bottom-left-radius: 2em; " +
              "border-top-left-radius: 2em;"
      right = "border-bottom-right-radius: 3em; " +
              "border-top-right-radius: 3em;"
      bottom = "border-bottom-left-radius: 4em; " +
                "border-bottom-right-radius: 4em;"

      expect(".border-top-radius").to have_ruleset(top)
      expect(".border-left-radius").to have_ruleset(left)
      expect(".border-right-radius").to have_ruleset(right)
      expect(".border-bottom-radius").to have_ruleset(bottom)
    end
  end
end
