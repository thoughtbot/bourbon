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

  context "pseudo class provided" do
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

  context "parent selector provided" do
    it "prepends parent selector to each input" do
      list = @text_inputs_list.dup
      inputs_with_parent_selector = list.map! { |input| ".class " + input }
      inputs_with_parent_selector.each do |selector|
        expect(selector).to have_rule("color: #ddd")
      end
    end
  end

  context "parent selector and psuedo class provided" do
    it "prepends parent selector and appends pseudo class to each input" do
      list = @text_inputs_list.dup
      inputs_with_psuedo_class = list.map! { |input| input + ":active" }
      inputs_with_parent_selector =
        inputs_with_psuedo_class.map! { |input| ".class " + input }
      inputs_with_parent_selector.each do |selector|
        expect(selector).to have_rule("color: #eee")
      end
    end
  end
end
