require 'spec_helper'
require 'generator_spec'

RSpec.describe MultiplicationTable::FibonachiGenerator do
  it_behaves_like 'a generator'

  describe '#get' do
    it 'returns an array of fibonachi numbers' do
      expect(subject.get(6)).to eq([1,1,2,3,5,8])
    end
  end
end
