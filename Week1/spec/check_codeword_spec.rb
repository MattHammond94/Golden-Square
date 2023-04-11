require 'check_codeword'

describe 'CheckCodeword' do
  it 'Should return a warm message when first and last chars are correct' do
    expect(check_codeword("cope")).to eq "Warmer"
    expect(check_codeword("chuckle")).to eq "Warmer"
    expect(check_codeword("cheese")).to eq "Warmer"
  end
end