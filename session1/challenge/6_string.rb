# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  array = string.split('')
  i = 0

  if return_odds
    array.each do |n|
      if i % 2 == 0
      	array[i] = "$$"
      end
      i += 1
    end
  array.delete("$$")
  string = String.new
  array.each {|n| string += n}
  return string
  end

  array.each do |n|
    unless i % 2 == 0
      array[i] = "$$"
    end
    i += 1
  end
  array.delete("$$")
  string = String.new
  array.each {|n| string += n}
  return string

end
