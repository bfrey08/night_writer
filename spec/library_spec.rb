require './lib/library'

RSpec.describe Library do
  it 'exists' do
    lib = Library.new
    expect(lib).to be_an_instance_of(Library)
  end
  it 'stores dictionaries' do
    lib = Library.new
    expect(lib.braille_key).to be_a(Hash)
    expect(lib.english_key).to be_a(Hash)

  end
end
