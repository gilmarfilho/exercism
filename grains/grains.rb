module Chess
  TOTAL_SQUARE = 64
end

# This class returns the total amount of wheat in the chest or the amount in one
# chest position
class Grains
  def self.square(position)
    2**(position - 1)
  end

  def self.total
    2 * square(Chess::TOTAL_SQUARE) - 1
  end
end
