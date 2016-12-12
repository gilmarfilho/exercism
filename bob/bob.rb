# This is Bob, say hi to him
class Bob
  def self.hey(text)
    return 'Fine. Be that way!' if empty?(text)
    return 'Whoa, chill out!' if yell?(text)
    return 'Sure.' if question?(text)
    'Whatever.'
  end

  def self.empty?(text)
    text.nil? || text.lstrip == ''
  end

  def self.question?(text)
    last_char(text) == '?'
  end

  def self.yell?(text)
    upcase?(text) && !letters(text).length.zero?
  end

  def self.upcase?(text)
    text.gsub(/(\W|\d)/, '').upcase == text.gsub(/(\W|\d)/, '')
  end

  def self.letters(text)
    text.gsub(/(\W|\d)/, '')
  end

  def self.last_char(text)
    text[text.size - 1]
  end
end
