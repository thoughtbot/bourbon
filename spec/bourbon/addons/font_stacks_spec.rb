require "spec_helper"

describe "font-stacks" do
  before(:all) do
    ParserSupport.parse_file("addons/font-stacks")
  end

  context "stacks used in variable" do
    it "output stacks" do
      helvetica = '"Helvetica Neue", "Helvetica", "Arial", sans-serif'
      lucida_grande = '"Lucida Grande", "Lucida Sans Unicode", ' +
                      '"Lucida Sans", "Geneva", "Verdana", sans-serif'
      verdana = '"Verdana", "Geneva", sans-serif'
      garamond = '"Garamond", "Baskerville", "Baskerville Old Face", ' +
                 '"Hoefler Text", "Times New Roman", serif'
      georgia = '"Georgia", "Times", "Times New Roman", serif'
      hoefler_text = '"Hoefler Text", "Baskerville Old Face", ' +
                     '"Garamond", "Times New Roman", serif'
      consolas = '"Consolas", "monaco", monospace'
      courier_new = '"Courier New", "Courier", "Lucida Sans Typewriter", ' +
                    '"Lucida Typewriter", monospace'
      monaco = '"monaco", "Consolas", "Lucida Console", monospace'

      expect(".helvetica").to have_rule("font-family: #{helvetica}")
      expect(".lucida-grande").to have_rule("font-family: #{lucida_grande}")
      expect(".verdana").to have_rule("font-family: #{verdana}")
      expect(".garamond").to have_rule("font-family: #{garamond}")
      expect(".georgia").to have_rule("font-family: #{georgia}")
      expect(".hoefler-text").to have_rule("font-family: #{hoefler_text}")
      expect(".consolas").to have_rule("font-family: #{consolas}")
      expect(".courier-new").to have_rule("font-family: #{courier_new}")
      expect(".monaco").to have_rule("font-family: #{monaco}")
    end
  end
end
