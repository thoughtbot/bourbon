require "spec_helper"

describe "directional-property" do
  before(:all) do
    ParserSupport.parse_file("utilities/directional-property")
  end

  context "directional-property" do
    it "returns property and values with four distinct lengths" do
      expect(".border-all").to have_rule("border-width: 2px 5px 8px 12px")
    end

    it "returns property and value with one length" do
      expect(".border-top").to have_rule("border-top: 10px")
    end

    it "returns property and value with vertical and horizontal values" do
      expect(".border-color").to have_rule("border-color: #fff #000")
    end

    it "returns properties for top and bottom margin" do
      ruleset = "margin-top: 20px; " +
                "margin-bottom: 10px;"

      expect(".margin-null").to have_ruleset(ruleset)
    end
  end
end
