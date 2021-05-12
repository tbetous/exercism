class Microwave
  def initialize(time)
    @time = time
  end

  def timer
    minutes, seconds = @time.divmod(100)
    minutes += seconds / 60
    seconds %= 60
    format('%02d:%02d', minutes, seconds)
  end
end
