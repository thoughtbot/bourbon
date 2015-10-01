require "spec_helper"

describe "font-face" do
  before(:all) do
    ParserSupport.parse_file("helpers/font-face-1")
  end

  context "called with defaults" do
    it "outputs defaults" do
      ruleset = 'font-family: "source-sans-pro"; ' +
                'font-style: normal; ' +
                'font-weight: normal; ' +
                'src: url("/fonts/source-sans-pro/source-sans-pro-regular.woff2") format("woff2"), url("/fonts/source-sans-pro/source-sans-pro-regular.woff") format("woff"), url("/fonts/source-sans-pro/source-sans-pro-regular.ttf") format("truetype");'

      expect("@font-face").to have_ruleset(ruleset)
    end
  end
end
