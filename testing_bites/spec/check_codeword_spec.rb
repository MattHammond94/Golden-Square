require 'check_codeword'

describe 'CheckCodeword' do
  it 'Should return a warm message when first and last chars are correct' do
    expect(check_codeword("cope")).to eq "Warmer"
    expect(check_codeword("chuckle")).to eq "Warmer"
    expect(check_codeword("cheese")).to eq "Warmer"
  end

  it 'Should return a wrong message when string passed has no resemblence to codeword' do
    expect(check_codeword("sandwich")).to eq "Wrong!"
    expect(check_codeword("sausage")).to eq "Wrong!"
    expect(check_codeword("mash")).to eq "Wrong!"
    expect(check_codeword("1234")).to eq "Wrong!"
    expect(check_codeword("")).to eq "Wrong!"
  end

  it 'Should return a correct message when codeword is passed correctly' do
    expect(check_codeword("cabbage")).to eq "Correct! Come in."
  end
end
