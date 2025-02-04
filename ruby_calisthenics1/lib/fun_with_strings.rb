module FunWithStrings
  def palindrome?
    # your code here
    str = self.downcase.scan(/\w/)
    str == str.reverse
  end
  def count_words
    # your code here
    counter = Hash.new(0)
    words = self.downcase.scan(/\w+/)
    words.each { |word| counter[word] += 1 }
    counter
  end
  def anagram_groups
    # your code here
    g = self.downcase.split.group_by{ |x| x.chars.sort }.values
    g
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
