class ArmstrongNumbers
  def self.include?(number)
    digits = number.digits
    digits.map { |n| n.to_i**digits.size }.sum == number
  end
end
