class Calculator
  attr_accessor :total_contribution_sum, :repayment_loan_sum, :repayment_percent_sum
  
  EPSILON = 1e-8

  def initialize(amount, interest_rate, count_months)
    @amount = amount.to_f
    @interest_rate = interest_rate.to_f
    @count_months = count_months.to_i
    @table = []
    @total_contribution_sum = 0
    @repayment_loan_sum = 0
    @repayment_percent_sum = 0
  end

  def accrued_interest
    @interest_rate / 12
  end

  def descrease_amount(value)
    (@amount - value).abs > EPSILON ? value : @amount
  end
end