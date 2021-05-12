class Squares
  attr_reader :square_of_sum, :sum_of_squares, :difference

  def initialize(number = 1)
    @square_of_sum = (1..number).to_a.sum**2
    @sum_of_squares = (1..number).map { |n| n**2 }.sum
    @difference = square_of_sum - sum_of_squares
  end
end
