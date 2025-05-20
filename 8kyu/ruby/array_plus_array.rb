=begin
I'm new to coding and now I want to get the sum of two arrays... Actually the sum of all their elements. I'll appreciate for your help.

P.S. Each array includes only integer numbers. Output is a number too.

https://www.codewars.com/kata/5a2be17aee1aaefe2a000151
=end

# Version 1
def array_plus_array(arr1, arr2)
    arr1.sum + arr2.sum
end

# Version 2 with .each loop
def array_plus_array2(arr1, arr2)
    sum = 0
    new_array = arr1 + arr2
    new_array.each do |i|
      sum += i
    end
    sum
end
  

puts array_plus_array([1, 2, 3], [4, 5, 6]) == 21  # 1+2+3+4+5+6 = 21

puts array_plus_array2([0, 0, 0], [0, 0, 0])      # => 0
puts array_plus_array2([-1, -2, -3], [1, 2, 3])   # => 0
puts array_plus_array2([100], [1, 2, 3])          # => 106