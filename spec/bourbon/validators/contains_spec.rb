require "spec_helper"

describe "contains" do
  before(:all) do
    ParserSupport.parse_file("validators/contains")
  end

  context "called on array with single item" do
    it "contains item" do
      expect(".single").to have_rule("color: #fff")
    end

    it "doesn't contain missing item" do
      expect(".single-missing").to have_rule("color: #000")
    end
  end

  context "called with array with multiple items" do
    it "contains item" do
      expect(".multiple").to have_rule("color: #fff")
    end

    it "doesn't contain missing item" do
      expect(".multiple-missing").to have_rule("color: #000")
    end
  end
end
