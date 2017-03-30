require "spec_helper"

describe "font-face" do
  before(:all) do
    ParserSupport.parse_file("css3/font-face-3")
  end

  context "called with defaults" do
    it "outputs defaults" do
      ruleset = 'font-family: "pitch";' +
                'src: font-url("/fonts/pitch.woff2") format("woff2");'

      expect("@font-face").to have_ruleset(ruleset)
    end
  end
end
