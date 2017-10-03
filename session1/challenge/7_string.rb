# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  array = string.split('')
  array.delete(' ')
  i = 0
  string = String.new
  while i < array.length - 1
  	string += array[i +1] if array[i] == "r" || array[i] == "R"
  	i += 1
  end
  return string
end
