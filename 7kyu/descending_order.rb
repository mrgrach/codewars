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



def descending_order2(n)
    # convert n to string, then a string to array of single digits
    digits = n.to_s.chars
    
    # convert each digit character to an integer
    digits_int = []
    digits.each do |integer|
      digits_int << integer
    end
    
    # sort the digits in descending order using a loop
    len = digits_int.length
    # this loop controls how many passes we do through the array. 
    # in bubble sort, we may need up to n-1 passes to fully sort the array.
    # this loop compares adjacent pairs of numbers.
    (0...len).each do |i|
      
      # we go from the beginning of the array up to the last 
      # unsorted element (which keeps shrinking with each outer loop iteration).
      (0...(len - 1 - i)).each do |j|
        
        # if the current element is smaller than the next one, 
        # swap them so the larger number moves forward (towards the front of the array).
        # it’s using Ruby's neat parallel assignment to swap two variables
        if digits_int[j] < digits_int[j + 1]
          digits_int[j], digits_int[j + 1] = digits_int[j + 1], digits_int[j]
        end
      end
    end
    
    # join digits and convert back to integer
    sorted_str = ""
    digits_int.each do |digit|
      sorted_str += digit.to_s
    end
    # return integer
    sorted_str.to_i
end
    
descending_order(42145) # => 54421
descending_order(145263) # => 654321
descending_order(123456789) # => 987654321

descending_order2(42145) # => 54421
descending_order2(145263) # => 654321
descending_order2(123456789) # => 987654321
  
  