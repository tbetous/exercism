class Matrix
  def initialize(description)
    @description = description
  end

  def rows
    @rows ||= @description.each_line.map { |line| line.split.map(&:to_i) }
  end

  def columns
    @columns ||= rows.transpose
  end
end
