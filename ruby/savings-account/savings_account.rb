module SavingsAccount
  def self.interest_rate(balance)
    case balance
    when nil...0
      -3.213
    when 0...1000
      0.5
    when 1000...5000
      1.621
    else
      2.475
    end
  end

  def self.annual_balance_update(balance)
    balance + interest(balance)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    raise 'Desired balance will never be reached!' if unreachable_desired_balance?(current_balance, desired_balance)

    years = 0
    balance = current_balance
    until desired_balance_reached?(balance, desired_balance)
      years += 1
      balance = annual_balance_update(balance)
    end

    years
  end

  def self.interest(balance)
    balance.abs * interest_rate(balance) / 100
  end

  def self.desired_balance_reached?(current_balance, desired_balance)
    if current_balance.positive?
      current_balance >= desired_balance
    else
      current_balance <= desired_balance
    end
  end

  def self.unreachable_desired_balance?(current_balance, desired_balance)
    (current_balance.negative? && current_balance < desired_balance) ||
      (current_balance.positive? && current_balance > desired_balance)
  end
end

#  Alternative solution
# module SavingsAccount

#   def self.interest_rate(balance)
#     return -3.213 if balance.negative?
#     return 0.5 if (0...1000).include?(balance)
#     return 1.621 if (1000...5000).include?(balance)

#     2.475
#   end

#   def self.annual_balance_update(balance)
#     interest = balance.abs * (interest_rate(balance) / 100)
#     balance + interest
#   end

#   def self.years_before_desired_balance(current_balance, desired_balance)
#     each_new_balance(current_balance)
#       .take_while { |new_balance| new_balance < desired_balance }
#       .count + 1
#   end

#   def self.each_new_balance(balance)
#     Enumerator.new do |y|
#       loop do
#         balance = annual_balance_update(balance)
#         y << balance
#       end
#     end
#   end
# end
