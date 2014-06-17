puts "Enter a number to convert to roman numerals."
print "> "
num = gets.chomp.to_i
roman_string = ''
# Add M's for each thousand
if num > 1000
  added_m = num / 1000
  added_m.times do
    roman_string = roman_string + "M"
    num = num - 1000
  end
end
# Now that we're below 1000, find out if it is 900 or 400; if not find if num > 500 for one D added
if num / 900 >= 1
  roman_string = roman_string + "CM"
  num = num - 900
elsif num >= 400 && num < 500
  roman_string = roman_string + "CD"
  num = num - 400
elsif num >= 500 && num < 900
  roman_string = roman_string + "D"
  num = num - 500
end
# If we still have trailing 100s, we need to remove them and add a C for it
if num >= 100
  added_c = num / 100
  added_c.times do
    roman_string = roman_string + "C"
    num = num - 100
  end
end
# all this crap could be thrown into a recursive function and I just realized it
# now check for 90, 50, 40, 10, 9, 5, 1
if num >= 90
  roman_string = roman_string + "XC"
  num = num - 90
end
if num >= 50
  roman_string = roman_string + "L"
  num = num - 50
end
if num >= 40
  roman_string = roman_string + "XL"
  num = num - 40
end
if num > 10
  added_x = num / 10
  added_x.times do
    roman_string = roman_string + "X"
    num = num - 10
  end
end
# now do the less than tens
if num >= 9
  roman_string = roman_string + "IX"
  num = num - 90
end
if num >= 5
  roman_string = roman_string + "V"
  num = num - 5
end
if num >= 4
  roman_string = roman_string + "IX"
  num = num - 4
end
if num > 1
  num.times do
    roman_string = roman_string + "I"
    num = num - 1
  end
end


puts num
puts roman_string