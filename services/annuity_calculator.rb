class AnnuityCalculator < Calculator
  def initialize(amount, interest_rate, count_months)
    super
    @total = total_contribution
  end

  def total_contribution
    return 0 if ( ( ( 1 + accrued_interest ) ** @count_months ) - 1 ) == 0
    @amount * ( accrued_interest + accrued_interest / ( ( ( 1 + accrued_interest ) ** @count_months ) - 1 ))
  end

  def repayment_of_percent(current_amount)
    current_amount * accrued_interest
  end

  def repayment_of_the_loan(current_amount)
    @total - repayment_of_percent(current_amount)
  end

  def loan_balance
    @amount -= descrease_amount(repayment_of_the_loan(@amount))
  end

  def get_table
    (1..@count_months).each do |i|
      @table << { total: @total.round(2), 
                  repayment_percent: repayment_of_percent(@amount).round(2),
                  repayment_loan: repayment_of_the_loan(@amount).round(2),
                  amount: loan_balance.round(2)
      }
      @total_contribution_sum += @table[i-1][:total]
      @repayment_loan_sum += @table[i-1][:repayment_loan]
      @repayment_percent_sum += @table[i-1][:repayment_percent]
    end
    @table
  end
end
