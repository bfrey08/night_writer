require './lib/night_writer.rb'

RSpec.describe NightWriter do
  xit 'exists' do

    nw = NightWriter.new(ARGV[0], ARGV[1])
    expect(nw).to be_an_instance_of(NightWriter)
  end
  xit 'initializes a new english msg and library when it is created' do
    nw = NightWriter.new(ARGV[0], ARGV[1])
    expect(nw.english_msg).to be_an_instance_of(Message)
    expect(nw.lib).to be_an_instance_of(Library)

  end
  xit 'can translate' do
    nw = NightWriter.new(ARGV[0], ARGV[1])
    expect(nw.english_msg.translated_msg).to be_a(Array)
  end


end
