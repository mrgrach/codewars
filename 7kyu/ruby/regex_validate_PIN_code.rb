=begin
ATM machines allow 4 or 6 digit PIN codes and PIN codes cannot contain anything but exactly 4 digits or exactly 6 digits.

If the function is passed a valid PIN string, return true, else return false.
Examples (Input --> Output)

"1234"   -->  true
"12345"  -->  false
"a234"   -->  false

Note: Regex means a regular expression

https://www.codewars.com/kata/55f8a9c06c018a0d6e000132
=end

def validate_pin(pin)
    #return true or false
    if (pin.length == 4 || pin.length == 6) && (pin.match?(/\A\d{4}\z/) || pin.match?(/\A\d{6}\z/))
      true
    else
      false
    end  
end

# more elegant solution
# def validate_pin(pin)
#     #return true or false
#     pin.match?(/\A(\d{4}|\d{6})\z/) 
# end

# The / at the start and end means “this is a regular expression (regex) pattern.”
# Inside those slashes is your actual pattern that checks:
#     \A - start of the string
#     (\d{4}|\d{6}) - either exactly 4 digits OR exactly 6 digits
#     \z - end of the string
   
# Tests for invalid length PINs
puts validate_pin("1") == false
puts validate_pin("12") == false
puts validate_pin("123") == false
puts validate_pin("12345") == false
puts validate_pin("1234567") == false
puts validate_pin("-1234") == false
puts validate_pin("1.234") == false
puts validate_pin("-1.234") == false
puts validate_pin("00000000") == false

# Tests for PINs containing non-digit characters
puts validate_pin("a234") == false
puts validate_pin(".234") == false

# Tests for valid 4-digit or 6-digit PINs
puts validate_pin("1234") == true
puts validate_pin("0000") == true
puts validate_pin("1111") == true
puts validate_pin("123456") == true
puts validate_pin("098765") == true
puts validate_pin("000000") == true
puts validate_pin("090909") == true 