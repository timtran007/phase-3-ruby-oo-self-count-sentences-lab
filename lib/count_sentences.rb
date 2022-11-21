require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    words = self.split(" ")
    array_of_truthy = words.map do |word|
      word.sentence? || word.question? || word.exclamation?
    end
    array_of_truthy.count(true)
    end
end