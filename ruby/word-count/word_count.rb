class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    @word_count ||= @phrase
      .downcase
      .gsub(/(\w'\w|\w)+/)
      .each_with_object({}) { |word, counts| counts[word] = (counts[word].nil? ? 0 : counts[word]) + 1 }
  end
end
