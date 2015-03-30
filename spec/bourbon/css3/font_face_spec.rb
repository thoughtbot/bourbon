require "spec_helper"

describe "font-face" do
  before(:all) do
    ParserSupport.parse_file("css3/font-face")
  end

  context "called with defaults" do
    it "outputs defaults" do
      ruleset = "font-family: \"Helvetica\"; " +
                "font-style: normal; " +
                "font-weight: normal; " +
                "src: url(\"/fonts.eot?#iefix\") " +
                "format(\"embedded-opentype\"), " +
                "url(\"/fonts.woff2\") format(\"woff2\"), " +
                "url(\"/fonts.woff\") format(\"woff\"), " +
                "url(\"/fonts.ttf\") format(\"truetype\"), " +
                "url(\"/fonts.svg#Helvetica\") format(\"svg\");; " +
                "font-family: \"Verdana\"; " +
                "font-style: \"italic\"; " +
                "font-weight: \"bold\"; " +
                "src: url(\"/assets/fonts.eot?#iefix\") " +
                "format(\"embedded-opentype\"), url(\"/assets/fonts.woff2\") " +
                "format(\"woff2\"), url(\"/assets/fonts.woff\") " +
                "format(\"woff\"), url(\"/assets/fonts.ttf\") " +
                "format(\"truetype\"), url(\"/assets/fonts.svg#Verdana\") " +
                "format(\"svg\");; " +
                "font-family: \"Georgia\"; " +
                "font-style: \"normal\"; " +
                "font-weight: \"normal\"; " +
                "src: url(\"/assets.eot?#iefix\") " +
                "format(\"embedded-opentype\"), url(\"/assets.woff2\") " +
                "format(\"woff2\"), url(\"/assets.woff\") format(\"woff\"), " +
                "url(\"/assets.ttf\") format(\"truetype\"), " +
                "url(\"/assets.svg#Georgia\") format(\"svg\");; " +
                "font-family: \"Arial\"; " +
                "font-style: \"normal\"; " +
                "font-weight: \"normal\"; " +
                "src: url(\"/.woff2\") format(\"woff2\"), " +
                "url(\"/.svg#Arial\") format(\"svg\");"

      expect("@font-face").to have_ruleset(ruleset)
    end
  end
end
