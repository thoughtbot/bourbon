require "spec_helper"

describe "text-inputs" do
  before(:all) do
    ParserSupport.parse_file("addons/text-inputs")

    @inputs_list = [
      "input[type=\"color\"]",
      "input[type=\"date\"]",
      "input[type=\"datetime\"]",
      "input[type=\"datetime-local\"]",
      "input[type=\"email\"]",
      "input[type=\"month\"]",
      "input[type=\"number\"]",
      "input[type=\"password\"]",
      "input[type=\"search\"]",
      "input[type=\"tel\"]",
      "input[type=\"text\"]",
      "input[type=\"time\"]",
      "input[type=\"url\"]",
      "input[type=\"week\"]",
      "textarea"
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
