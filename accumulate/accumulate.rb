module BookKeeping
  VERSION = 1
end

# Accumulate methods
class Array
  def accumulate
    collect { |element| yield element }
  end
end
