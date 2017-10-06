# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

def match_maker(*array)
  diana = array.first
  answer = []
  array.length.times do |n|
    if array[n]
      array[n] = true
    else
      array[n] = false
    end
  end
  array.shift
  if diana
    (array.length/2).times do
      if (array[0] && array[1]) || (array[0] == false && array[1] == false)
        answer.push(false)
        array.shift
        array.shift
      else
        answer.push(true)
        array.shift
        array.shift
      end
    end
  else
    (array.length/2).times do
      if (array[0] && array[1]) || (array[0] == false && array[1] == false) 
        answer.push(true)
        array.shift
        array.shift
      else
        answer.push(false)
        array.shift
        array.shift
      end
    end
  end
  return answer
end