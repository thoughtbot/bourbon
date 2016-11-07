require "spec_helper"

describe "fetch-bourbon-setting" do
  before(:all) do
    ParserSupport.parse_file("utilities/fetch-bourbon-setting")
  end

  context "fetches the modular-scale-base setting" do
    it "and returns the default value" do
      expect(".test-1").to have_rule("content: 1em")
    end
  end

  context "fetches the rails-asset-pipeline setting" do
    it "and returns the user-overridden value" do
      expect(".test-2").to have_rule("content: true")
    end
  end

  context "called from the font-face mixin" do
    it "outputs user-overridden font file formats" do
      ruleset = 'font-family: "source-sans-pro"; ' +
                'src: font-url("source-sans-pro-regular.woff2") ' +
                     'format("woff2"), ' +
                     'font-url("source-sans-pro-regular.woff") ' +
                     'format("woff");'

      expect("@font-face").to have_ruleset(ruleset)
    end
  end
end
