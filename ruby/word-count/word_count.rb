class Phrase
  def initialize(phrase)
    @words = phrase.downcase.gsub(/(\w'\w|\w)+/)
  end

  def word_count
    @word_count ||= @words.tally
  end
end
