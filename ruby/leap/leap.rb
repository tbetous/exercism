class Year
  def self.leap?(year)
    divisable_by_4 = year.modulo(4).zero? # year % 4 == 0
    divisable_by_100 = year.modulo(100).zero? # year % 100 == 0
    divisable_by_400 = year.modulo(400).zero? # year % 400 == 0
    divisable_by_4 && (!divisable_by_100 || divisable_by_400)
  end
end
