describe Player do 
  let(:subject) { described_class.new('goliath') }
  
  describe '#initialize' do 
    it 'initializes with a name' do 
      expect(subject.name).to eq 'goliath'
    end
    it 'initializes with 100 hitpoints' do 
      expect(subject.hitpoints).to eq 100
    end
    it 'initializes with  normal status' do 
      expect(subject.status).to eq 'Normal'
    end

  end
end