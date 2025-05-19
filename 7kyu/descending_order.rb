=begin
Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.
Examples:

Input: 42145 Output: 54421

Input: 145263 Output: 654321

Input: 123456789 Output: 987654321

https://www.codewars.com/kata/5467e4d82edf8bbf40000155
=end

def descending_order(n)
    # 1. Convert number to string. It's easy to work with individual numbers
    # 2. Split the string into an array (.chars)
    # 3. Sort an array in the reverse order (.sort.reverse)
    # 4. Join the sorted array back to string (.join)
    # 4. Convert string to integer (.to_i)
    str = n.to_s
    ord_str = str.chars.sort.reverse.join.to_i
end

descending_order(42145) # => 54421
descending_order(145263) # => 654321
descending_order(123456789) # => 987654321
  
  