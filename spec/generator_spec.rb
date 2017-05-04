shared_examples_for 'a generator' do
  it { is_expected.to respond_to(:next) }

  describe '#next' do
    it 'returns Numeric' do
      expect(subject.next).to be_a_kind_of(Numeric)
    end
  end
end
