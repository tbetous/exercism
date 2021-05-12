class Series
  def initialize(serie)
    @serie = serie
  end

  def slices(n)
    raise ArgumentError if n > @serie.length

    @serie.each_char.each_cons(n).map(&:join)
  end
end
