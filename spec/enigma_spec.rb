require './lib/enigma.rb'

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

  it 'can encrypt a message with a key and date' do
    expect(@enigma.encrypt("hello world", "02715", "040895")).to eq( {
                                              encryption: "keder ohulw",
                                              key: "02715",
                                              date: "040895"
                                              })
  end

  it 'can decrypt a message with a key and date' do
    expect(@enigma.decrypt("keder ohulw", "02715", "040895")).to eq({
                                              decryption: "hello world",
                                              key: "02715",
                                              date: "040895"
                                              })
  end

  
