require "spec_helper"

describe "is-size" do
  before(:all) do
    ParserSupport.parse_file("functions/is-size")
  end

  context "called with integer" do
    it "is not a size" do
      expect(".integer").to_not have_rule("margin-top: 1")
    end
  end

  context "called with px" do
    it "is a size" do
      expect(".px").to have_rule("margin-top: 2px")
    end
  end

  context "called with em" do
    it "is a size" do
      expect(".em").to have_rule("margin-top: 3em")
    end
  end

  context "called with rem" do
    it "is a size" do
      expect(".rem").to have_rule("margin-top: 4rem")
    end
  end

  context "called with percent" do
    it "is a size" do
      expect(".percent").to have_rule("margin-top: 5%")
    end
  end

  context "called with string" do
    it "is not a size" do
      expect(".string").to_not have_rule("margin-top: \"stringy\"")
    end
  end
end
