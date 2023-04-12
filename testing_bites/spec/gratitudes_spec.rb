require 'gratitudes'

describe Gratitudes do
  it 'Should an unaltered grateful for string if add not called' do
    expect(Gratitudes.new.format).to eq "Be grateful for: "
  end

  it 'Should return a string containing single passed gratitude after one add call' do
    expect(Gratitudes.new.add("BBQ Sauce").format).to eq "Be grateful for: BBQ Sauce"
  end
end
