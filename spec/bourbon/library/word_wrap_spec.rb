require "spec_helper"

describe "word-wrap" do
  before(:all) do
    ParserSupport.parse_file("library/word-wrap")
  end

  context "called on element" do
    it "adds word-wrap" do
      input = ".word-wrap"
      ruleset = "overflow-wrap: break-word; " +
                "word-wrap: break-word; " +
                "word-break: break-all;"

      expect(input).to have_ruleset(ruleset)
    end
  end

  context "called on element with break" do
    it "adds break" do
      input = ".word-wrap-break"
      ruleset = "overflow-wrap: normal; " +
                "word-wrap: normal; " +
                "word-break: normal;"

      expect(input).to have_ruleset(ruleset)
    end
  end
end
