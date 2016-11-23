require 'pry'

module BookKeeping
  VERSION = 1
end

class Prime
  def self.nth(position)
    self.validate(position)
    self.populate(position)[position - 1]
  end
  
  private
  
  def self.validate(number)
    if(number < 1)
      fail(ArgumentError, "Please, insert a number greater then 0")
    end
  end
  
  def self.populate(amount)
    primes = []
    primes << 2
    number = 3
    
    while primes.size < amount
      if is_prime?(number)
        primes << number
      end
      number+= 2
    end
    primes
  end
  
  def self.is_prime?(number)
    square = Math.sqrt(number).to_i
    is_prime = true
    for divider in 2..square
      if(number % divider == 0)
        is_prime = false
        break
      end
    end
    is_prime
  end
end