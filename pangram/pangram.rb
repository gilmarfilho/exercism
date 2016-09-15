module BookKeeping
  VERSION = 2
end

class Pangram
  def self.is_pangram? (string)
    string.downcase!
    result = true
    ('a'..'z').each do |letter|
      if !string[letter]
        result = false
        break
      end
    end
    
    result
      
  end
end
  