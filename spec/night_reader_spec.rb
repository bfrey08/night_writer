require './lib/night_reader.rb'

RSpec.describe NightReader do
  xit 'exists' do

    nr = NightReader.new(ARGV[0], ARGV[1])
    expect(nr).to be_an_instance_of(NightReader)
  end
  xit 'initializes a new english msg and library when it is created' do
    nr = NightReader.new(ARGV[0], ARGV[1])
    expect(nr.braille_msg).to be_an_instance_of(Message)
    expect(nr.lib).to be_an_instance_of(Library)

  end
  xit 'can translate' do
    nr = NightReader.new(ARGV[0], ARGV[1])
    expect(nr.braille_msg.translated_msg).to be_a(Array)
  end


end
