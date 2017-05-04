require 'spec_helper'

RSpec.describe MultiplicationTable::PrimeGenerator do
  it_behaves_like 'a generator'

  describe '#next' do
    it 'should give you next prime number' do
      expect( subject.next ).to eq(2)
    end
  end
end
