# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  
  attr_accessor :number_of_bottles

  def initialize(number)
    if number < 0
      @number_of_bottles = 0
    elsif number > 99
      @number_of_bottles = 99
    else
      @number_of_bottles = number
    end
  end 
	 
def eng_converter(number)
  array = number.to_s.split('')
  array.length.times { |n| array[n] = array[n].to_i }
  
  zero = ["", "", "Twenty","Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
  one = ["", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
  two = ["Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
  string = ""
  
  case array.length
  when 1
    return "Zero" if array[0] == 0
  	return one[array[0]]
  when 2
    return two[number.to_i-10] if (10..19).include?(number.to_i)
    string += zero[array[0]]
    unless array[1] == 0
      string += "-"
      string += one[array[1]].downcase
    end	
  	return string
  end
end 

def print_song
  if @number_of_bottles == 0
  	puts ""
  	return
  end
  until @number_of_bottles == 1
    number = eng_converter(@number_of_bottles)
  	puts "#{number} bottles of beer on the wall,\n#{number} bottles of beer,\nTake one down, pass it around,"
  	@number_of_bottles -= 1
  	unless @number_of_bottles == 1
  	  puts "#{eng_converter(@number_of_bottles)} bottles of beer on the wall." 
    else
      puts "One bottle of beer on the wall."
    end
  end
  puts "One bottle of beer on the wall,\nOne bottle of beer,\nTake one down, pass it around,"
  puts "Zero bottles of beer on the wall."  
end
end
BeerSong.new(0).print_song