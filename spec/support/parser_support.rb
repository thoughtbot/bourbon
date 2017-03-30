module ParserSupport
  def self.parser
    @parser ||= CssParser::Parser.new
  end

  def self.parse_file(identifier)
    parser.load_file!("tmp/#{identifier}.css")
  end

  def self.show_contents(identifier)
    css_file_contents = File.open("tmp/#{identifier}.css").read
    css_file_contents.each_line do |line|
      puts line
    end
  end
end
