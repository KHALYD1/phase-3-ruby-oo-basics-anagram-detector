# Your code goes here!
# anagram.rb

class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(words)
    words.select { |w| anagram?(w.downcase) }
  end

  private

  def anagram?(other_word)
    return false if @word == other_word

    sort_letters(@word) == sort_letters(other_word)
  end

  def sort_letters(word)
    word.chars.sort
  end
end
