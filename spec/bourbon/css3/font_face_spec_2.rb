require "spec_helper"

describe "font-face" do
  before(:all) do
    ParserSupport.parse_file("css3/font-face-2")
  end

  context "called with defaults" do
    it "outputs defaults" do
      ruleset = 'font-family: "roboto"; ' +
                'font-style: "italic"; ' +
                'font-weight: "bold"; ' +
                'src: url("/assets/fonts/Roboto-BoldItalic.ttf") ' +
                'format("truetype");'

      expect("@font-face").to have_ruleset(ruleset)
    end
  end
end
