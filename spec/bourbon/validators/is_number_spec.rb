require "spec_helper"

describe "is-number" do
  before(:all) do
    ParserSupport.parse_file("validators/is-number")
  end

  context "called with integer" do
    it "is a number" do
      expect(".integer").to have_rule("line-height: 1")
    end
  end

  context "called with px" do
    it "is a number" do
      expect(".px").to have_rule("line-height: 2px")
    end
  end

  context "called with em" do
    it "is a number" do
      expect(".em").to have_rule("line-height: 3em")
    end
  end

  context "called with rem" do
    it "is a number" do
      expect(".rem").to have_rule("line-height: 4rem")
    end
  end

  context "called with percent" do
    it "is a number" do
      expect(".percent").to have_rule("line-height: 5%")
    end
  end

  context "called with string" do
    it "is not a number" do
      expect(".string").to_not have_rule("line-height: \"stringy\"")
    end
  end
end
