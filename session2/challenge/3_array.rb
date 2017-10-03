# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    str = String.new
  	arr = split('')
  	length.times do |n|
  		if n % 2 == 0
  			str += arr[n]
  		end
  	end
  	return str
  end
end
