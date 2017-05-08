shared_examples_for 'a generator' do
  it { is_expected.to respond_to(:get).with(1).argument }

  describe '#get' do

    context 'with positive sequence length' do
      it 'returns array of Numeric' do
        expect(subject.get(3)).to all(be_a(Numeric))
      end
    end

    context 'with length of sequence less or equal to zero' do
      it 'returns empty array' do
        expect(subject.get(0)).to eq([])
        expect(subject.get(-1)).to eq([])
      end
    end
  end
end
