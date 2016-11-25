module BookKeeping
  VERSION = 1
end

# This class returns the prime number according to the order chosen by the user
class Prime
  def self.nth(position)
    validate position
    get_prime position
  end

  def self.validate(number)
    raise(ArgumentError, 'Please, insert a number greater then 0') if number < 1
  end

  def self.get_prime(position)
    # Considering that the number 2 is the only prime pair, here I make a chec
    # if the user wants to get the first number, if so the number 2 is already
    # returned, otherwise a loop is made where the desired number is searched
    # Considering only the odds

    if position > 1
      primes_counter = 1
      number = 3
      while primes_counter < position
        primes_counter += 1 if prime? number
        number += 2
      end
      number -= 2
    end
    number || 2
  end

  def self.prime?(number)
    square = Math.sqrt(number)
    dividers = 2..square

    dividers.each do |divider|
      return false if (number % divider).zero?
    end
    true
  end
end
