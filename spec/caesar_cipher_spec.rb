require_relative '../lib/caesar_cipher'

describe "the text is ciphered" do
  it "should return a new text for A-Z " do
    expect(caesar_cipher("Hello", 2)).to eq("Jgnnq")
    expect(caesar_cipher("Love",1)).to eq("Mpwf")
    expect(caesar_cipher("hE?lo39",1)).to eq('iF@mp4:')
    expect(caesar_cipher("Love hello",2)).to eq("Nqxg jgnnq")
    expect(caesar_cipher(23,2)).to eq("Not a string")
  end
end