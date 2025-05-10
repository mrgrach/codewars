=begin
Return the number (count) of vowels in the given string.

We will consider a, e, i, o, u as vowels for this Kata (but not y).

The input string will only consist of lower case letters and/or spaces.

https://www.codewars.com/kata/54ff3102c1bad923760001f3
=end

# First Version: Using each_char
def get_count(input_str)
    vowels = ["a", "e", "i", "o", "u"]
    count = 0
  
    # Loop through each character in the input string
    input_str.each_char do |char|
      if vowels.include?(char)
        count += 1
      end
    end
    count
  end
  
# Second Version: Using for ... in
def get_count(input_str)
    #your code here
    vowels = ["a", "e", "i", "o", "u"]
    count = 0
  
    for char in input_str.chars do 
      if vowels.include?(char)
        count += 1
      end  
    end
    count
end 

puts "Test 1 passed" if get_count("abracadabra") == 5
puts "Test 2 passed" if get_count("") == 0
puts "Test 3 passed" if get_count("pear tree") == 4
puts "Test 4 passed" if get_count("o a kak ushakov lil vo kashu kakao") == 13

