module BookKeeping
  TOTAL_SQUARE = 64
end

# This class returns the total amount of wheat in the chest or the amount in one
# chest position
class Grains
  def self.square(position)
    2**(position - 1)
  end

  def self.total
    squares = 1..BookKeeping::TOTAL_SQUARE
    total_amount = 0

    squares.each do |square|
      total_amount += 2**(square - 1)
    end
    total_amount
  end
end
