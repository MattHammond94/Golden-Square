require 'gratitudes'

describe Gratitudes do
  it 'Should an unaltered grateful for string if add not called' do
    expect(Gratitudes.new.format).to eq "Be grateful for: "
  end

  it 'Should return a string containing single passed gratitude after one add call' do
    grat = Gratitudes.new
    grat.add("BBQ Sauce")
    expect(grat.format).to eq "Be grateful for: BBQ Sauce"
  end

  it 'Should return a string containing multiple gratitudes after a series of add calls' do
    grat = Gratitudes.new
    grat.add("Nandos")
    grat.add("Bangin' tunes")
    grat.add("Gemma Collins")
    expect(grat.format).to eq "Be grateful for: Nandos, Bangin' tunes, Gemma Collins"
  end
end
