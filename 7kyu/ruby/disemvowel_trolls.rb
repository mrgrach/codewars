=begin
Trolls are attacking your comment section!

A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.

Your task is to write a function that takes a string and return a new string with all vowels removed.

For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".

Note: for this kata y isn't considered a vowel.

https://www.codewars.com/kata/52fba66badcd10859f00097e
=end

def disemvowel(str)
    vowels = ["a", "e", "i", "o", "u"]
    new_str = ""
    
    for char in str.chars
      if !vowels.include?(char.downcase)
        new_str += char
      end  
    end 
    
    return new_str
end

puts disemvowel("What are you doing?") == "Wht r y dng?"
puts disemvowel("AEIOUaeiou") == ""
puts disemvowel("Ruby is fun!") == "Rby s fn!"