# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(n)
  jall = Hash.new { |this_hash, key| this_hash[key] = 0 }
  array = []
  for i in 1..n
  	unless i % 2 == 0
  	  jall[i] 
  	  k = i
  	  for h in 1..k
  	    array.push(h) if h % 2 == 0
  	  end
  	  jall[i] = array
  	  array = []	
    end
  end
  return jall	
end