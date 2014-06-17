puts "Type 'sing x' where 'x' is equal to a number above zero."
sing_num = gets.chomp
num_bottles = nil

# SURVIVE THE SING_NUM GAUNTLET OF DOIN' IT WRONG
while true
  sing_test = sing_num.split
  sing_test[1] = sing_test[1].to_i
  if sing_test[1] <= 0
    puts "Input a number greater than zero."
  end
  if sing_test[0] != 'sing'
    puts "You must specify with 'sing' first, then a number."
  end
  if sing_test[1] != sing_test[1].to_i
    puts "You must specify with 'sing x' where 'x' is a number above zero."
  end
  if sing_test.length > 2
    puts "You must specify with 'sing x' and nothing more"
  end
  if sing_test[0] == 'sing' && sing_test[1] == sing_test[1].to_i && sing_test.length == 2
    num_bottles = sing_test[1].to_i
    break
  end
  puts "Specify 'sing x' where 'x' is a number above 0."
  sing_num = gets.chomp.to_i
end

while num_bottles > 0
  puts "#{num_bottles} bottles of beer on the wall,"
  puts "#{num_bottles} botles of beer!"
  puts "Take one down, pass it around,"
  num_bottles = num_bottles - 1
  puts "#{num_bottles} bottles of beer on the wall!"
  puts
end
