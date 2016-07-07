require "spec_helper"

describe "prefixer" do
  before(:all) do
    ParserSupport.parse_file("library/prefixer")
  end

  context "called with no prefixes" do
    it "outputs the spec" do
      rule = "appearance: none;"

      expect(".prefix").to have_ruleset(rule)
    end
  end

  context "called with one prefix" do
    it "applies the prefix to the property" do
      rule = "-webkit-appearance: none; " +
             "appearance: none;"

      expect(".prefix--webkit").to have_ruleset(rule)
    end
  end

  context "called with multiple prefixes" do
    it "applies the prefixes to the property" do
      rule = "-moz-appearance: none; " +
             "-ms-appearance: none; " +
             "appearance: none;"

      expect(".prefix--moz-ms").to have_ruleset(rule)
    end
  end
end
