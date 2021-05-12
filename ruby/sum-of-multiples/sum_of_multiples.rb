class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  # Complex but this allows to get the memoized result of `to` function
  def to(limit)
    @to ||= Hash.new do |h, key|
      h[key] = 1.upto(key - 1).to_a.filter { |n| multiple?(n) }.sum
    end
    @to[limit]
  end

  def multiple?(number)
    @multiples.any? { |multiple| !multiple.zero? && (number % multiple).zero? }
  end
end
