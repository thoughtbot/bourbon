require "spec_helper"

describe "font-source-declaration" do
  before(:all) do
    ParserSupport.parse_file("utilities/font-source-declaration")
  end

  context "called with pipeline" do
    it "returns pipeline path" do
      rule = 'src: font-url("b.woff2") format("woff2"), ' +
             'font-url("b.woff") format("woff")'
      expect(".has-pipeline").to have_rule(rule)
    end
  end

  context "called with no pipeline" do
    it "does not return pipeline path" do
      rule = 'src: url("b.woff2") format("woff2"), ' +
             'url("b.woff") format("woff")'
      expect(".no-pipeline").to have_rule(rule)
    end
  end
end
