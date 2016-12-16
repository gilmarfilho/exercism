module BookKeeping
  VERSION = 2
end

# Encode you messages
class RunLengthEncoding
  def self.start_coding(text)
    @code = ''
    @last_char = text.chars[0]
    @char_amount = 0
  end

  def self.encode(text)
    start_coding(text)
    text.each_char do |letter|
      if letter == @last_char
        @char_amount += 1
      else
        codify(letter)
      end
    end
    codify(@last_char)
    @code
  end

  def self.codify(letter)
    @code += if @char_amount > 1
               @char_amount.to_s + @last_char.to_s
             else
               @last_char.to_s
             end
    @last_char = letter
    @char_amount = 1
  end

  def self.start_decoding
    @text = ''
    @number = ''
  end

  def self.decode(code)
    start_decoding
    code.each_char do |char|
      if char.to_i > 0
        @number += char
      else
        decoding(char)
      end
    end
    @text
  end

  def self.decoding(char)
    @text += if @number.empty?
               char
             else
               char * @number.to_i
             end
    @number = ''
  end
end
