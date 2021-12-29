class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def splitted_words
    @phrase.downcase.gsub(/(\w'\w|\w)+/)
  end

  def word_count
    @word_count ||= splitted_words.each_with_object({}) do |word, counts|
      counts[word] = (counts[word] || 0) + 1
    end
  end
end
