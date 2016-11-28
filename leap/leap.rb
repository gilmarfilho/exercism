module BookKeeping
  VERSION = 2
end

# This class if a year is a leap year or not
class Year
  def self.leap?(year)
    if divisible(year, 4)
      if divisible(year, 100)
        true if divisible(year, 400)
        false
      end
      true
    else
      false
    end
  end

  def self.divisible(year, divider)
    true if (year % divider).zero?
  end
end
