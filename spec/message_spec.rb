require './lib/message.rb'


RSpec.describe Message do
  it 'exists' do
    msg1 = Message.new
    expect(msg1).to be_an_instance_of(Message)
  end
  it 'can store both translated and un translated messages as an array' do
    msg1 = Message.new
    expect(msg1.msg).to be_a(Array)
    expect(msg1.translated_msg).to be_a(Array)
  end
  it 'can instantiate a new message with passing an english message from a txt file' do
    msg2 = Message.english(ARGV[0], ARGV[1])
    expect(msg2).to be_an_instance_of(Message)
  end
  it 'can instantiate a new message with taking in braille' do
    msg3 = Message.braille(ARGV[0], ARGV[1])
    expect(msg3).to be_an_instance_of(Message)
  end
  it 'can take in braille and convert it into an array of strings. each string is 1 english letter' do
    msg1 = Message.new
    msg1.msg = [[".0"],[".0"],[".0"]],[["00"],["00"],["00"]],[["00"],["00"],["00"]]
    msg1.english_string

    expect(msg1.english_string).to eq([".0.0.0","000000","000000"])
  end
end
