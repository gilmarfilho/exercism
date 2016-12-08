module BookKeeping
  VERSION = 1
end

# This class counts how much all words appears in a text
class Phrase
  def initialize(text)
    @words = separe_words(text)
  end

  def word_count
    @words.each_with_object(Hash.new(0)) do |word, words|
      words[word] = words[word] + 1
    end
  end

  private

  def separe_words(text)
    text.downcase.scan(/\b[\w']+\b/)
  end
end
