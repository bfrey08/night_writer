require './lib/message.rb'
require './lib/library.rb'

class NightReader
  attr_reader :lib, :braille_msg
  def initialize(input_file, export_file)
    @braille_msg = Message.braille(input_file, self)
    @lib     = Library.new
  end

  def translate
    #Iterate over english_msg (array) and find + replace each element (string) with a braille (string) by searching the english->braille library (hash). Set new array = @braille_msg
    #line breaks are denoted with ^
    @braille_msg.translated_msg = @braille_msg.msg.map {|char| @lib.english_key[char]}
  end

  def create_file_w_translation
    #combines braille array into a string that is placed inside a new file that this method creates.
    File.open(ARGV[1], "w") {|f| f.write(@braille_msg.translated_msg.join)}
  end

  def char_length
    @braille_msg.translated_msg.compact.length
  end
end


if ARGV.length < 2
  puts "Too few arguments"
  exit
elsif ARGV.length > 2
  puts "Too many arguements"
  exit
elsif ARGV[0][-4..-1] != '.txt' && ARGV[1][-4..-1] != '.txt'
  puts "Make sure the input and export files are a txt file and include the extension '.txt' in the file name"
  exit
else
  nr = NightReader.new(ARGV[0], ARGV[1])
  nr.translate
  nr.create_file_w_translation
  puts "Created #{ARGV[1]} containing #{nr.char_length} characters"
end
