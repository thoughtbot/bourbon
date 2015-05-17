require "spec_helper"

describe "text-inputs" do
  before(:all) do
    ParserSupport.parse_file("addons/text-inputs")

    @inputs_list = %w(
      input[type="color"]
      input[type="date"]
      input[type="datetime"]
      input[type="datetime-local"]
      input[type="email"]
      input[type="month"]
      input[type="number"]
      input[type="password"]
      input[type="search"]
      input[type="tel"]
      input[type="text"]
      input[type="time"]
      input[type="url"]
      input[type="week"]
      input:not([type])
      textarea
    )
  end

  context "expands plain text inputs" do
    it "finds selectors" do
      list = @inputs_list.join(", ")
      ruleset = "content: #{list};"

      expect(".all-text-inputs").to have_ruleset(ruleset)
    end
  end

  context "expands active text inputs" do
    it "finds selectors" do
      list = @inputs_list.map { |input| "#{input}:active" }
      list = list.join(", ")
      ruleset = "content: #{list};"

      expect(".all-text-inputs-active").to have_ruleset(ruleset)
    end
  end

  context "expands focus text inputs" do
    it "finds selectors" do
      list = @inputs_list.map { |input| "#{input}:focus" }
      list = list.join(", ")
      ruleset = "content: #{list};"

      expect(".all-text-inputs-focus").to have_ruleset(ruleset)
    end
  end

  context "expands hover text inputs" do
    it "finds selectors" do
      list = @inputs_list.map { |input| "#{input}:hover" }
      list = list.join(", ")
      ruleset = "content: #{list};"

      expect(".all-text-inputs-hover").to have_ruleset(ruleset)
    end
  end
end
