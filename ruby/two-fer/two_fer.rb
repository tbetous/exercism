class TwoFer
  def self.two_fer(name = 'you', language = :English)
    case language
    when :English
      "One for #{name}, one for me."
    when :Spanish
      "Uno para el #{name}, uno para mí."
    when :German
      "Einer für den #{name}, einer für mich."
    when :Dutch
      "Eén voor #{name}, één voor mij."
    end
  end
end
