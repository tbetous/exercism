class Pangram
  ALPHABET = [*'a'..'z'].freeze
  def self.pangram?(sentence)
    (ALPHABET - sentence.downcase.chars).empty?
  end
end
