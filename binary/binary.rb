module BookKeeping
  VERSION = 3
end

# Tranform a binary in decimal
class Binary
  def self.to_decimal(binary)
    raise ArgumentError, 'Invalid binary' unless valid?(binary)
    decimal = 0
    digits = binary.reverse!
    digits.each_char.with_index do |digit, position|
      decimal += 2**position * digit.to_i
    end
    decimal
  end

  def self.valid?(binary)
    binary.each_char do |number|
      return false if number != '1' && number != '0'
    end
    true
  end
end
