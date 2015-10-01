require "spec_helper"

describe "font-face" do
  before(:all) do
    ParserSupport.parse_file("helpers/font-face-4")
  end

  context "called with defaults" do
    it "outputs defaults" do
      ruleset = 'font-family: "circular"; ' +
                'font-style: "normal"; ' +
                'font-weight: "normal"; ' +
                'src: url("/circular.woff2") format("woff2"), ' +
                'url("/circular.svg#circular") format("svg");'

      expect("@font-face").to have_ruleset(ruleset)
    end
  end
end
