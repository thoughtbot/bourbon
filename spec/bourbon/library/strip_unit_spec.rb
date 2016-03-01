require "spec_helper"

describe "strip-unit" do
  before(:all) do
    ParserSupport.parse_file("library/strip-unit")
  end

  context "called with px" do
    it "strips units" do
      expect(".px").to have_rule("width: 10")
    end
  end

  context "called with em" do
    it "strips units" do
      expect(".em").to have_rule("width: 2")
    end
  end

  context "called with rem" do
    it "strips units" do
      expect(".rem").to have_rule("width: 1.5")
    end
  end

  context "called with percent" do
    it "strips units" do
      expect(".percent").to have_rule("width: 20")
    end
  end
end
