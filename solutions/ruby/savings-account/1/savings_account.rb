module SavingsAccount
  def self.interest_rate(balance)
    case balance
    when 0...1000 then 0.5
    when 1000...5000 then 1.621
    when 5000.. then 2.475
    when ...0 then 3.213
    end
  end

  def self.interest_rate_percentage(balance)
    (self.interest_rate(balance) * balance) / 100
  end

  def self.annual_balance_update(balance)
    balance + self.interest_rate_percentage(balance)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    year_count = 0;

    while desired_balance >= current_balance
      current_balance = current_balance + self.interest_rate_percentage(current_balance)
      year_count = year_count + 1
    end

    year_count
  end
end
