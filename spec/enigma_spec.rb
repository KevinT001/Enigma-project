RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new

    @encrypt = @enigma.encrypt("hello world", "02715")
    @encrypted =  {encryption: "keder ohulw",
                  key: "02715",
                  date: "040895"
                  }
    @decrypt = @enigma.decrypt("keder ohulw", "02715", "040895")
    @decrypted =  {decryption: "hello world",
                  key: "02715",
                  date: "040895"
                  }
  end

  it 'exists' do
    expect(@enigma).to be_a(Enigma)
  end
