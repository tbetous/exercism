class Triangle
  attr_reader :side_lengths

  def initialize(side_lengths = [0, 0, 0])
    @side_lengths = side_lengths
  end

  def equilateral?
    return false if invalid?

    side_lengths.uniq.length == 1
  end

  def isosceles?
    return false if invalid?

    side_lengths.uniq.length < 3
  end

  def scalene?
    return false if invalid?

    side_lengths.uniq.length == 3
  end

  def inequality?
    side_lengths.min * 2 < side_lengths.max
  end

  def invalid?
    side_lengths.any?(0) || inequality?
  end
end
