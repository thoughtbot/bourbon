require "spec_helper"

describe "assign-inputs" do
  before(:all) do
    ParserSupport.parse_file("utilities/assign-inputs")
    @text_inputs_list = [
      "[type='password']",
      "[type='text']",
      "textarea"
    ]
  end

  context "expands plain text inputs" do
    it "finds selectors" do
      @text_inputs_list.each do |input|
        expect(input).to have_rule("color: #f00")
      end
    end
  end

  context "expands text inputs with pseudo classes" do
    it "finds selectors" do
      list = @text_inputs_list.dup
      list.map! { |input| input + ":active" }
      list.each do |input|
        expect(input).to have_rule("color: #0f0")
      end
    end
  end

  context "expands text inputs when first in list" do
    it "finds selectors" do
      list = @text_inputs_list.dup
      list.push "select"
      list.each do |input|
        expect(input).to have_rule("color: #00f")
      end
    end
  end

  context "expands text inputs when middle of list" do
    it "finds selectors" do
      list = @text_inputs_list.dup
      list.unshift "[type=\"file\"]"
      list.each do |input|
        expect(input).to have_rule("color: #f0f")
      end
    end
  end
end
