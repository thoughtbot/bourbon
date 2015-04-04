require "spec_helper"

describe "font-face" do
  before(:all) do
    ParserSupport.parse_file("css3/font-face")
  end

  context "called with defaults" do
    it "outputs defaults" do
      ruleset = "font-family: \"Helvetica\"; " +
                "font-style: normal; " +
                "font-weight: normal;; " +
                "font-family: \"Verdana\"; " +
                "font-style: \"italic\"; " +
                "font-weight: \"bold\"; " +
                "src: url(\"/assets/fonts.eot?#iefix\") " +
                "format(\"embedded-opentype\");; " +
                "font-family: \"Georgia\"; " +
                "font-style: \"normal\"; " +
                "font-weight: \"normal\"; " +
                "src: url(\"/assets.woff\") format(\"woff\");; " +
                "font-family: \"Arial\"; " +
                "font-style: \"normal\"; " +
                "font-weight: \"normal\"; " +
                "src: url(\"/.woff2\") format(\"woff2\"), " +
                "url(\"/.svg#Arial\") format(\"svg\");"

      expect("@font-face").to have_ruleset(ruleset)
    end
  end
end
