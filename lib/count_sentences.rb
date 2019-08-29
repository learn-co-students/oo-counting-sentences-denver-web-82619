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
    strings = self.split(".")
    strings = strings.map {|string| string.split("!")}.flatten
    strings = strings.map {|string| string.split("?")}.flatten
    strings.select {|string| string.length >= 1}
    strings.length
  end
end

