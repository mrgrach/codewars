=begin 
Very simple, given a number (integer / decimal / both depending on the language), 
find its opposite (additive inverse).
Examples:
1: -1
14: -14
-34: 34
=end

def opposite(num)
    num - (num *2)
end
   
# enhanced version 
def opposite(value)
    value * -1
end   