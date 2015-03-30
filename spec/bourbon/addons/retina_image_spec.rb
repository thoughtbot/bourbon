require "spec_helper"

describe "retina-image" do
  before(:all) do
    ParserSupport.parse_file("addons/retina-image")
  end

  context "called with defaults" do
    it "applies defaults" do
      ruleset = 'background-image: url("retina-default.png");; ' +
                'background-image: url("retina-default_2x.png"); ' +
                'background-size: "320px 480px";'

      expect(".retina-default").to have_ruleset(ruleset)
    end
  end

  context "called with extension" do
    it "applies file extension" do
      ruleset = 'background-image: url("retina-extension.jpg");; ' +
                'background-image: url("retina-extension_2x.jpg"); ' +
                'background-size: "20px 40px";'

      expect(".retina-extension").to have_ruleset(ruleset)
    end
  end

  context "called with custom retina filename" do
    it "applies filename" do
      ruleset = 'background-image: url("default.png");; ' +
                'background-image: url("custom.png"); ' +
                'background-size: "10px 5px";'

      expect(".retina-custom-name").to have_ruleset(ruleset)
    end
  end

  context "called with custom retina suffix" do
    it "applies suffix" do
      ruleset = 'background-image: url("default.png");; ' +
                'background-image: url("default@2x.png"); ' +
                'background-size: "3em 2em";'

      expect(".retina-custom-suffix").to have_ruleset(ruleset)
    end
  end

  context "called with no pipeline" do
    it "applies suffix" do
      ruleset = 'background-image: url("default.jpg");; ' +
                'background-image: url("default.jpg"); ' +
                'background-size: "100px 20px";'

      expect(".retina-pipeline").to have_ruleset(ruleset)
    end
  end
end
