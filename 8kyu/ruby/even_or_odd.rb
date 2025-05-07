# Create a function that takes an integer as an argument
# and returns "Even" for even numbers or "Odd" for odd numbers.

# https://www.codewars.com/kata/53da3dbb4a5168369a0000fe/train/ruby

# Version 1: Using if/else
def even_or_odd(number)
    if number % 2 == 0
        return "Even"
    else
        return "Odd"
    end  
  end

puts "Testing even_or_odd:"
puts even_or_odd(1) == "Odd"     # => true
puts even_or_odd(2) == "Even"    # => true
puts even_or_odd(-1) == "Odd"    # => true
puts even_or_odd(-2) == "Even"   # => true
puts even_or_odd(0) == "Even"    # => true
  