describe Player do 
  let(:subject) { described_class.new('goliath') }
  let(:david) { described_class.new('david') }

  describe '#initialize' do 
    it 'initializes with a name' do 
      expect(subject.name).to eq 'goliath'
    end
    it 'initializes with 100 hitpoints' do 
      expect(subject.hitpoints).to eq Player::DEFAULT_HP
    end
    it 'initializes with  normal status' do 
      expect(subject.status).to eq 'Normal'
    end
  end
  describe '#attack' do 
    it 'damages the player' do 
      expect(subject).to receive(:receive_damage).with(no_args)
      david.attack(subject)
    end
    it 'reduces hitpoints' do 
      expect { david.attack(subject) }.to change { subject.hitpoints }.by -10
    end
  end
end