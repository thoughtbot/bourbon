require "spec_helper"

describe "overflow-wrap" do
  before(:all) do
    ParserSupport.parse_file("library/overflow-wrap")
  end

  context "called on element" do
    it "adds overflow-wrap and word-wrap" do
      input = ".overflow-wrap"
      ruleset = "word-wrap: break-word; " +
                "overflow-wrap: break-word;"

      expect(input).to have_ruleset(ruleset)
    end
  end

  context "called on element with normal" do
    it "sets values as normal" do
      input = ".overflow-wrap-normal"
      ruleset = "word-wrap: normal; " +
                "overflow-wrap: normal;"

      expect(input).to have_ruleset(ruleset)
    end
  end
end
