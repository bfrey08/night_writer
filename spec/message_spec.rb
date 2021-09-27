RSpec.describe Message do
  it 'exists' do
    msg1 = Message.new
    expect(msg1).to be_an_instance_of(Message)
  end
  it 'can store both translated and un translated messages as an array' do
    lib = Message.new
    expect(msg1.msg).to be_a(Array)
    expect(msg1.translated_msg).to be_a(Array)
  end
end
