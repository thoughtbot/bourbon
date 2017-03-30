require "spec_helper"

describe "modular-scale" do
  before(:all) do
    ParserSupport.parse_file("library/modular-scale")
  end

  context "called with arguments (1, $value: 2em)" do
    it "outputs double the first value from the default scale" do
      expect(".one-base-two").to have_rule("font-size: 2.5em")
    end
  end

  context "called with arguments (1, $value: 3em)" do
    it "outputs triple the first value from the default scale" do
      expect(".one-base-three").to have_rule("font-size: 3.75em")
    end
  end

  context "called with arguments (1, $value: 4em 6em)" do
    it "outputs quadruple the first value from the default scale" do
      expect(".one-double-value").to have_rule("font-size: 1.024em")
    end
  end

  context "called with arguments (1, $ratio: $golden-ratio)" do
    it "output the first value from the golden ratio scale" do
      expect(".one-golden-ratio").to have_rule("font-size: 1.618em")
    end
  end

  context "called with argument (2)" do
    it "outputs the second value from the default scale" do
      expect(".two-base-one").to have_rule("font-size: 1.5625em")
    end
  end

  context "called with arguments (2, $value: 4em 6em)" do
    it "outputs sextuple the second value from the default scale" do
      expect(".two-double-value").to have_rule("font-size: 3.125em")
    end
  end
end
