require "spec_helper"

describe "font-face" do
  before(:all) do
    ParserSupport.parse_file("css3/font-face-5")
  end

  context "called with additional CSS rules" do
    it "outputs defaults with additional content" do
      ruleset = 'font-family: "calibre"; ' +
                'src: url("fonts/calibre.woff2") format("woff2"), ' +
                'url("fonts/calibre.woff") format("woff"), ' +
                'url("fonts/calibre.ttf") format("truetype"); ' +
                "font-style: normal;" +
                "font-weight: 600;" +
                "unicode-range: U+26;"

      expect("@font-face").to have_ruleset(ruleset)
    end
  end
end
