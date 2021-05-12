class Acronym
  def self.abbreviate(sentence = '')
    sentence.upcase.split(/\W/).map(&:chr).join
  end
end
