require "spec_helper"

describe "border-radius" do
  before(:all) do
    ParserSupport.parse_file("addons/border-radius")
  end

  context "called with one argument" do
    it "applies to correct sides" do
      expect(".border-top-radius").to have_ruleset("border-top-left-radius: 1em; border-top-right-radius: 1em;")
      expect(".border-left-radius").to have_ruleset("border-bottom-left-radius: 2em; border-top-left-radius: 2em;")
      expect(".border-right-radius").to have_ruleset("border-bottom-right-radius: 3em; border-top-right-radius: 3em;")
      expect(".border-bottom-radius").to have_ruleset("border-bottom-left-radius: 4em; border-bottom-right-radius: 4em;")
    end
  end
end
