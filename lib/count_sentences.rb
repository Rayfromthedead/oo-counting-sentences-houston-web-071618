require 'pry'

class String

  def check(option)
    if self.end_with? option
      true
    else
      false
    end
  end

  def sentence?
    check(".")
  end

  def question?
    check("?")
  end

  def exclamation?
    check("!")
  end

  def count_sentences
#self.gsub(/[.?!]/, '\0|')
self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count

  end
end
# #exclamation?
#   returns true if the string that you are calling this method on ends in an exclamation mark (FAILED - 5)
#   returns false if the string that you are calling this method on does NOT end in a exclamation mark. (FAILED - 6)
# #count_sentences
#   returns the number of sentences in a string (FAILED - 7)
#   returns zero if there are no sentences in a string (FAILED - 8)
#   returns the number of sentences in a complex string (FAILED - 9)
