module BookKeeping
  VERSION = 2
end

class Fixnum
  ROMAN_NUMBERS = {
    1000 => "M",  
     900 => "CM",  
     500 => "D",  
     400 => "CD",
     100 => "C",  
      90 => "XC",  
      50 => "L",  
      40 => "XL",  
      10 => "X",  
        9 => "IX",  
        5 => "V",  
        4 => "IV",  
        1 => "I",  
  }

  def to_roman
    number = self
    result = ""
    ROMAN_NUMBERS.each do |arabic_number, roman_number|
      result << roman_number*(number / arabic_number)
      number = number % arabic_number
    end
    return result
  end
end

p 3651.to_roman