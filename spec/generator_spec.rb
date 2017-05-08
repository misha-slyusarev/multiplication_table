shared_examples_for 'a generator' do
  it { is_expected.to respond_to(:get).with(1).argument }

  describe '#get' do

    it 'returns Array of Numeric' do
      expect(subject.get(3)).to all(be_a(Numeric))
    end
  end
end
