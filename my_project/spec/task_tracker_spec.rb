require 'task_tracker'

describe 'TaskTracker' do
  context 'trues' do
    it 'Should return true if text passed includes #TODO' do
      expect(task_tracker("#TODO")).to eq true
    end
  end

  context 'falses' do
    it 'Should return false if text passed does not include a #TODO' do
      expect(task_tracker("plain string")).to eq false
    end
  end

  context 'Incorrect data types' do
    it 'Should return an error message when task tracker is passed anything other than a string' do
      expect { task_tracker(1) }.to raise_error "This is not a valid input type"
      expect { task_tracker(:symbol) }.to raise_error "This is not a valid input type"
      expect { task_tracker(nil) }.to raise_error "This is not a valid input type"
    end
  end
end