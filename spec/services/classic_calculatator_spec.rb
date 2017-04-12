require 'spec_helper'

describe 'ClassicCalculator' do
  
  describe '#repayment_of_percent' do
    it 'return odject class Float' do
      ac = ClassicCalculator.new(100, 2, 20)
      percent = ac.repayment_of_percent
      expect(percent.class).to eq(Float)
    end
  end

  describe '#get_table' do
    it 'return not empty attribute' do
      ac = ClassicCalculator.new(10, 3, 1)
      table = ac.get_table
      expect(table).not_to eql(nil)
      expect(table).not_to eql({})
    end
  end
end