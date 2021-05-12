class Anagram
  def initialize(source_word)
    @source_word = source_word
  end

  def match(words)
    words.filter { |word| anagram?(@source_word, word) }
  end

  def anagram?(source, target)
    downcased_source = source.downcase
    downcased_target = target.downcase

    downcased_target.chars.sort.join == downcased_source.chars.sort.join unless downcased_source == downcased_target
  end
end
