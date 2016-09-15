module BookKeeping
  VERSION = 3
end

class Squares
  def initialize (number) 
    @number = number
  end
    
  def square_of_sum
    result = 0; for i in 1..@number; result += i; end;
    result ** 2
  end
  
  def sum_of_squares
    result = 0; for i in 1..@number; result += i ** 2; end;
    result
  end
  
  def difference
    self.square_of_sum - self.sum_of_squares
  end
end
  