class Transpose
  def self.transpose(text)
    lines = text.split("\n")
    max_width = lines.map(&:size).max

    # Tests are really weird and force me to replace trailing spaces with blank('') when it is the end of the sentence.
    # The result is nearly the same without \0 and gsub
    lines
      .map { |line| line.ljust(max_width, "\0") }
      .map(&:chars)
      .transpose
      .map(&:join)
      .join("\n")
      .gsub(/\0+$/, '')
      .gsub(/\0/, ' ')
  end
end
