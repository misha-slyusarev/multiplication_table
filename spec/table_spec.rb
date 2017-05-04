require 'spec_helper'

RSpec.describe MultiplicationTable::Table do
  subject { MultiplicationTable::Table.new(seq_generator_class, seq_length) }

  describe '#print_out' do
    context 'with PrimeGenerator as sequence generator' do
      let(:seq_generator_class) { MultiplicationTable::PrimeGenerator }

      context 'with sequence length more then 0' do
        let(:seq_length) { 2 }
        let(:valid_table) { '  2 3\n2 4 6\n3 6 9' }

        it 'prints out prime multiplication table' do
          expect(subject.print_out).to eq(valid_table)
        end
      end

      context 'with sequence length less then 1' do
        let(:seq_length) { -1 }

        it 'prints out error message' do
          expect(subject.print_out).to eq("Don't know what to print")
        end
      end
    end
  end
end
