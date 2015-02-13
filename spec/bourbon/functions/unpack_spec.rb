require "spec_helper"

describe "unpack" do
  before(:all) do
    ParserSupport.parse_file("functions/unpack")
  end

  context "single" do
    it "unpacks four identical measurements" do
      expect(".single").to have_rule("padding: 10px 10px 10px 10px")
    end
  end

  context "double" do
    it "unpacks identical measurements for top and bottom,
      and different identical measurements for left and right" do
      expect(".double").to have_rule("padding: 1em 2em 1em 2em")
    end
  end

  context "triple" do
    it "unpacks identical measurements for left and right" do
      expect(".triple").to have_rule("padding: 10px 20px 0 20px")
    end
  end

  context "quadruple" do
    it "unpacks four distict measurements" do
      expect(".quadruple").to have_rule("padding: 0 calc(1em + 10px) 20px 50px")
    end
  end
end
