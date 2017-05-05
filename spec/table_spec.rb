require 'spec_helper'

RSpec.describe MultiplicationTable::Table do
  let(:seq_generator) { MultiplicationTable::PrimeGenerator.new }
  subject { MultiplicationTable::Table.new(seq_generator) }

  describe '#print_out' do
    context 'with PrimeGenerator as sequence generator' do
      let(:seq_length) { 2 }
      let(:valid_table) { "  2 3\n2 4 6\n3 6 9\n" }

      it 'prints out prime multiplication table' do
        expect{subject.print_out(seq_length)}.to output(valid_table).to_stdout
      end
    end

    context 'with sequence length less then 1' do
      it 'prints out error message' do
        expect{subject.print_out(-1)}.to output("Sequence length must be more than zero\n").to_stdout
      end
    end

    it 'returns nil' do
      expect(subject.print_out(2)).to be_nil
    end
  end
end
