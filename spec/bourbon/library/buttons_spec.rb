require "spec_helper"

describe "buttons" do
  before(:all) do
    ParserSupport.parse_file("library/buttons")

    @buttons_list = %w(
      button
      [type='button']
      [type='reset']
      [type='submit']
    )
  end

  context "expands plain buttons" do
    it "finds selectors" do
      list = @buttons_list.join(", ")
      ruleset = "content: #{list};"

      expect(".all-buttons").to have_ruleset(ruleset)
    end
  end

  context "expands active buttons" do
    it "finds selectors" do
      list = @buttons_list.map { |input| "#{input}:active" }
      list = list.join(", ")
      ruleset = "content: #{list};"

      expect(".all-buttons-active").to have_ruleset(ruleset)
    end
  end

  context "expands focus buttons" do
    it "finds selectors" do
      list = @buttons_list.map { |input| "#{input}:focus" }
      list = list.join(", ")
      ruleset = "content: #{list};"

      expect(".all-buttons-focus").to have_ruleset(ruleset)
    end
  end

  context "expands hover buttons" do
    it "finds selectors" do
      list = @buttons_list.map { |input| "#{input}:hover" }
      list = list.join(", ")
      ruleset = "content: #{list};"

      expect(".all-buttons-hover").to have_ruleset(ruleset)
    end
  end
end
