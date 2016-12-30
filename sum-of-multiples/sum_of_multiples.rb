# Return the sum of the multiples
class SumOfMultiples
  def initialize(*numbers)
    @divisors = []
    numbers.each do |number|
      @divisors << number
    end
  end

  def to(limit)
    sum = 0
    (1...limit).each do |number|
      sum += number if divisible(number)
    end
    sum
  end

  private

  def divisible(number)
    @divisors.each do |divisor|
      return true if (number % divisor).zero?
    end
    false
  end
end
