=begin
Complete the square sum function so that it squares each number passed into it and then sums the results together.

For example, for [1, 2, 2] it should return 9 because 12+22+22=91^2 + 2^2 + 2^2 = 912+22+22=9.

https://www.codewars.com/kata/52fba66badcd10859f00097e
=end

def square_sum(numbers)
    numbers.map { |n| n * n }.sum
end

puts square_sum([1, 2, 2]) == 9          # 1^2 + 2^2 + 2^2 = 1 + 4 + 4 = 9
puts square_sum([0, 3, 4, 5]) == 50 