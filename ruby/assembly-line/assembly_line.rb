class AssemblyLine
  DEFAULT_PRODUCTON_PER_HOUR = 221

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    DEFAULT_PRODUCTON_PER_HOUR * success_rate * @speed
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end

  private

  def success_rate
    case @speed
    when 1..4
      1
    when 5..8
      0.9
    when 9
      0.8
    when 10
      0.77
    end
  end
end
