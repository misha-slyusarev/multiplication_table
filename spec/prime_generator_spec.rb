require 'spec_helper'

RSpec.describe MultiplicationTable::PrimeGenerator do
  it_behaves_like 'a generator'

  describe '#get' do
    it 'returns an array of prime numbers' do
      expect(subject.get(3)).to eq([2,3,5])
    end
  end
end
