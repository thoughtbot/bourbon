require "spec_helper"

describe "assign-inputs" do
  before(:all) do
    ParserSupport.parse_file("functions/assign-inputs")
    @text_inputs_list = [
      "input[type=\"password\"]",
      "input[type=\"text\"]",
      "textarea"
    ]
  end

  context "expands plain text inputs" do
    it "finds selectors" do
      @text_inputs_list.each do |input|
        expect(input).to have_rule("color: #ff0000")
      end
    end
  end

  context "expands text inputs with pseudo classes" do
    it "finds selectors" do
      list = @text_inputs_list.dup
      list.map! { |input| input + ":active" }
      list.each do |input|
        expect(input).to have_rule("color: #00ff00")
      end
    end
  end

  context "expands text inputs when first in list" do
    it "finds selectors" do
      list = @text_inputs_list.dup
      list.push "select"
      list.each do |input|
        expect(input).to have_rule("color: #0000ff")
      end
    end
  end

  context "expands text inputs when middle of list" do
    it "finds selectors" do
      list = @text_inputs_list.dup
      list.unshift "input[type=\"file\"]"
      list.each do |input|
        expect(input).to have_rule("color: #ff00ff")
      end
    end
  end
end
