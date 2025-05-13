=begin
Create a function which answers the question "Are you playing banjo?".
If your name starts with the letter "R" or lower case "r", you are playing banjo!

The function takes a name as its only argument, and returns one of the following strings:

name + " plays banjo" 
name + " does not play banjo"

Names given are always valid strings.

https://www.codewars.com/kata/53af2b8861023f1d88000832
=end

def are_you_playing_banjo(name)
    # Implement me!
    if name[0] == "R" || name[0] == "r"
        name + " plays banjo"
    else name + " does not play banjo"    
    end
end

def are_you_playing_banjo_v2(name)
    # Implement me!
    name[0].downcase == 'r' ? "#{name} plays banjo" : "#{name} does not play banjo"
end

  puts "Testing 'Are You Playing Banjo?':"
  puts are_you_playing_banjo("Martin") == "Martin does not play banjo" # ==> true
  puts are_you_playing_banjo("Rikke") == "Rikke plays banjo"           # ==> true
  puts are_you_playing_banjo("bravo") == "bravo does not play banjo"   # ==> true
  puts are_you_playing_banjo("rolf") == "rolf plays banjo"             # ==> true

  puts "Testing 'Are You Playing Banjo?'_v2:"
  puts are_you_playing_banjo_v2("Martin") == "Martin does not play banjo" # ==> true
  puts are_you_playing_banjo_v2("Rikke") == "Rikke plays banjo"           # ==> true
  puts are_you_playing_banjo_v2("bravo") == "bravo does not play banjo"   # ==> true
  puts are_you_playing_banjo_v2("rolf") == "rolf plays banjo"             # ==> true