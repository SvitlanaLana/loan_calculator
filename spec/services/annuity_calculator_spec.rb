require 'spec_helper'

describe 'AnnuityCalculator' do
  
  describe '#total_contribution' do
    it 'return odject class Float' do
      ac = AnnuityCalculator.new(100, 2, 20)
      total = ac.total_contribution
      expect(total.class).to eq(Float)
    end
  end

  describe '#get_table' do
    it 'return not empty attribute' do
      ac = AnnuityCalculator.new(0, 0, 0)
      table = ac.get_table
      expect(table).not_to eql(nil)
      expect(table).not_to eql({})
    end
  end
end