class ClassicCalculator < Calculator
  def initialize(amount, interest_rate, count_months)
    super
    @repayment_loan = repayment_of_the_loan
  end

  def total_contribution
    @repayment_loan + repayment_of_percent
  end

  def repayment_of_percent
    @amount * accrued_interest
  end

  def repayment_of_the_loan
    @amount / @count_months
  end

  def loan_balance
    @amount -= descrease_amount(@repayment_loan)
  end

  def get_table
    (1..@count_months).each do |i|
      @table << {
        repayment_loan: @repayment_loan.round(2),
        repayment_percent: repayment_of_percent.round(2),
        total: total_contribution.round(2),
        amount: loan_balance.round(2)
      }
      @total_contribution_sum += @table[i-1][:total]
      @repayment_loan_sum += @table[i-1][:repayment_loan]
      @repayment_percent_sum += @table[i-1][:repayment_percent]
    end
    @table
  end
end