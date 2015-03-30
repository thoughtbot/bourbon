require "spec_helper"

describe "buttons" do
  before(:all) do
    ParserSupport.parse_file("addons/buttons")

    @buttons_list = [
      "button",
      "input[type=\"button\"]",
      "input[type=\"reset\"]",
      "input[type=\"submit\"]"
    ]
  end

  context "expands plain buttons" do
    it "finds selectors" do
      @buttons_list.each do |input|
        expect(input).to have_rule("color: #ff0000")
      end
    end
  end

  context "expands active buttons" do
    it "finds selectors" do
      list = @buttons_list.dup
      list.map! { |input| input + ":active" }
      list.each do |input|
        expect(input).to have_rule("color: #00ff00")
      end
    end
  end

  context "expands focus buttons" do
    it "finds selectors" do
      list = @buttons_list.dup
      list.map! { |input| input + ":focus" }
      list.each do |input|
        expect(input).to have_rule("color: #0000ff")
      end
    end
  end

  context "expands hover buttons" do
    it "finds selectors" do
      list = @buttons_list.dup
      list.map! { |input| input + ":hover" }
      list.each do |input|
        expect(input).to have_rule("color: #ff00ff")
      end
    end
  end
end
