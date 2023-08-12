require "./caesar.rb"

describe '#caesar_cipher' do
  it "returns a string with each letter shifted further down the alphabet" do
    expect(caesar_cipher("Pbzobq Jbppxdb", 3)).to eql("Secret Message")
  end

  it "returns the same string when the shift number is zero" do
    expect(caesar_cipher("Don't change this please", 0)).to eql("Don't change this please")
  end

  it "ignores any characters that are not letters" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end

  it "accepts negative numbers to shift back in the alphabet" do
    expect(caesar_cipher("How do you do?", -4)).to eql("Dks zk ukq zk?")
  end

  it "still works when the shift number is greater than 26" do
    expect(caesar_cipher("My password is abcxyz1", 56)).to eql("Qc tewwasvh mw efgbcd1")
  end
end