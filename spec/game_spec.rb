require 'game'

describe Game do
  let(:david) { double(:david, hitpoints: 100) }
  let(:goliath) { double(:goliath, hitpoints: 100) }
  let(:subject) { described_class.new(david, goliath) }
  
  describe '#attack' do 
    it 'reduces hitpoints' do 
      expect(goliath).to receive(:receive_damage).with(no_args)
      subject.attack(2)
    end
  end

  describe "#intialize" do
    it "shows player 1" do
      expect(subject.players[0]).to eq(david)
    end

    it "shows player 2" do
      expect(subject.players[1]).to eq(goliath)
    end

  end

end