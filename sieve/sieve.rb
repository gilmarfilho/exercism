class Sieve
  def initialize (limit)
  	@numbers = (2..limit).to_a
  end

  def primes
  	result = []
  	while !@numbers.empty?
  	  result << @numbers.first
  	  @numbers.delete_if {|number| number % @numbers.first == 0 && number != @numbers.first}
  	  @numbers.shift
    end
    result
  end
end