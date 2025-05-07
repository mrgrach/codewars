# Create a function that takes an integer as an argument
# and returns "Even" for even numbers or "Odd" for odd numbers.

# https://www.codewars.com/kata/53da3dbb4a5168369a0000fe

# Version 1: Using if/else
def even_or_odd(number)
    if number % 2 == 0
        return "Even"
    else
        return "Odd"
    end  
  end

# Version 2: Using the ternary operator and the even? method
# The ternary operator is a shorthand for an if-else statement. 
# It has the following syntax:
#   condition ? true_result : false_result
def even_or_odd_v2(number)
    number.even? ? "Even" : "Odd"
  end
  
puts "Testing even_or_odd_v1:"
puts even_or_odd(1) == "Odd"     # Expected output: "Odd"
puts even_or_odd(2) == "Even"    # Expected output: "Even"
puts even_or_odd(-1) == "Odd"    # Expected output: "Odd"
puts even_or_odd(-2) == "Even"   # Expected output: "Even"
puts even_or_odd(0) == "Even"    # Expected output: "Even"

puts "Testing even_or_odd_v2:"
puts even_or_odd_v2(1) == "Odd"     # Expected output: "Odd"
puts even_or_odd_v2(2) == "Even"    # Expected output: "Even"
puts even_or_odd_v2(-1) == "Odd"    # Expected output: "Odd"
puts even_or_odd_v2(-2) == "Even"   # Expected output: "Even"
puts even_or_odd_v2(0) == "Even"    # Expected output: "Even"