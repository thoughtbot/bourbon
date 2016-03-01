require "spec_helper"

describe "font-face" do
  before(:all) do
    ParserSupport.parse_file("css3/font-face-4")
  end

  context "called with defaults" do
    it "outputs defaults" do
      ruleset = 'font-family: "circular"; ' +
                'src: url("/circular.woff2") format("woff2"), ' +
                'url("/circular.svg#circular") format("svg");'

      expect("@font-face").to have_ruleset(ruleset)
    end
  end
end
