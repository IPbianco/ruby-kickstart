# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
# 
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

def alternate_words(string)
  array = string.split('')
  black_list = %w{! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |} 
  array.length.times do |n|
    if black_list.include?(array[n])
      array[n] = " "
    end
  end
  string = String.new
  array.each { |n| string += n}
  array = string.split(' ')
  answer = []
  array.length.times { |n| answer.push(array[n]) if n % 2 == 0 }
  return answer
end