require 'game'

describe Game do
  let(:david) { double(:david, hitpoints: 100) }
  let(:goliath) { double(:goliath, hitpoints: 100) }
  # let(:subject) { described_class.new(david, goliath) }
  
  describe '#attack' do 
    it 'reduces hitpoints' do 
      expect(goliath).to receive(:receive_damage).with(no_args)
      subject.attack(goliath)
    end
  end
end