require 'present'

describe Present do
  it 'Should wrap and unwrap a passed contents' do
    present = Present.new
    present.wrap("toy")
    expect(present.unwrap).to eq "toy"
  end

  it 'Should return an error when present is not wrapped and unwrap is called' do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
  end

  it 'Should return an error if a contents has already been wrapped and another is passed' do
    present = Present.new
    present.wrap("Barbie")
    expect { present.wrap("Ken") }.to raise_error "A contents has already been wrapped."
  end
end