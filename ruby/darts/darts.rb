class Darts
  def initialize(x_position, y_position)
    @distance = Math.sqrt(x_position**2 + y_position**2)
  end

  def score
    case @distance
    when 0..1 then 10
    when 1..5 then 5
    when 5..10 then 1
    else 0
    end
  end
end
