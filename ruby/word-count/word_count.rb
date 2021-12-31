class Phrase
  REGULAR_EXPRESSION = {
    WORDS: /\b[\w']+\b/
  }.freeze
  RE = REGULAR_EXPRESSION
  private_constant :REGULAR_EXPRESSION, :RE

  attr_reader :word_count

  def initialize(phrase)
    @word_count = phrase.downcase.scan(RE[:WORDS]).tally
  end
end
