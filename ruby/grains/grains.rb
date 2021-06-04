class Grains
  def self.square(n)
    throw ArgumentError if n <= 0 || n >= 65
    2**(n - 1)
  end

  def self.total
    # No optimized
    # (1..64).map { |n| Grains.square(n) }.sum

    # Optimized
    # https://en.wikipedia.org/wiki/Geometric_series
    2**64 - 1
  end
end
