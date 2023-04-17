require 'music_tracker'

describe MusicTracker do
  context 'Multiple add method calls' do
    it 'Should return a list of tracks after multiple add methods are called' do
      library = MusicTracker.new 
      library.add("James Blunt - You're Beautiful")
      library.add("Bicep - Glue")
      library.add("Tool - Lateralus")
      library.add("Sex Pistols - No Fun")
      library.add("")
      expect(library.list).to eq ["James Blunt - You're Beautiful", "Bicep - Glue", "Tool - Lateralus", "Sex Pistols - No Fun"]
    end
  end

  context 'Empty Strings' do
    it 'Should return an empty list if an empty string is passed to add before calling list' do
      library = MusicTracker.new
      library.add("")
      expect(library.list).to eq []
    end
  end

  context 'Failures' do 
    it 'Should return an error message when add is passed anything other than a string' do
      library = MusicTracker.new
      expect { library.add(12) }.to raise_error "Invalid input type"
      expect { library.add(nil) }.to raise_error "Invalid input type"
      expect { library.add (:symbol) }.to raise_error "Invalid input type"
    end
  end
end