require "spec_helper"

describe "text-inputs" do
  before(:all) do
    ParserSupport.parse_file("addons/text-inputs")

    @inputs_list = [
      '[type="color"]',
      '[type="date"]',
      '[type="datetime"]',
      '[type="datetime-local"]',
      '[type="email"]',
      '[type="month"]',
      '[type="number"]',
      '[type="password"]',
      '[type="search"]',
      '[type="tel"]',
      '[type="text"]',
      '[type="time"]',
      '[type="url"]',
      '[type="week"]',
      'textarea'
    ]
  end

  context "expands plain text inputs" do
    it "finds selectors" do
      @inputs_list.each do |input|
        expect(input).to have_rule("color: #ff0000")
      end
    end
  end

  context "expands active text inputs" do
    it "finds selectors" do
      list = @inputs_list.dup
      list.map! { |input| input + ":active" }
      list.each do |input|
        expect(input).to have_rule("color: #00ff00")
      end
    end
  end

  context "expands focus text inputs" do
    it "finds selectors" do
      list = @inputs_list.dup
      list.map! { |input| input + ":focus" }
      list.each do |input|
        expect(input).to have_rule("color: #0000ff")
      end
    end
  end

  context "expands hover text inputs" do
    it "finds selectors" do
      list = @inputs_list.dup
      list.map! { |input| input + ":hover" }
      list.each do |input|
        expect(input).to have_rule("color: #ff00ff")
      end
    end
  end
end
