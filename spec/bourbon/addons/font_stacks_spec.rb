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

      expect(".helvetica").to have_value(helvetica)
      expect(".lucida-grande").to have_value(lucida_grande)
      expect(".verdana").to have_value(verdana)
      expect(".garamond").to have_value(garamond)
      expect(".georgia").to have_value(georgia)
      expect(".hoefler-text").to have_value(hoefler_text)
      expect(".consolas").to have_value(consolas)
      expect(".courier-new").to have_value(courier_new)
      expect(".monaco").to have_value(monaco)
    end
  end
end
