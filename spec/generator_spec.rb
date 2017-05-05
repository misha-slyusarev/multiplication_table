shared_examples_for 'a generator' do
  it { is_expected.to respond_to(:get).with(1).argument }

  describe '#get' do
    it 'returns Array' do
      expect(subject.get(2)).to be_a_kind_of(Array)
    end
  end
end
