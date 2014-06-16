puts "Tell us where to start singing 99 bottles of beer. But make sure to say 'sing X'"
start = gets.chomp()

while start == ""
  puts "I need to know how many bottles to sing!"
  start = gets.chomp()
end

split_start = start.split
i_dont_think_so_time = false

if split_start[0].downcase != "sing" || split_start[1] != split_start[1].to_i
  puts "ERROR!"
  i_dont_think_so_time = true
end
#if split_start[1] != split_start[1].to_i
#  puts "ERROR!"
#  i_dont_think_so_time = true
#end
if split_start[1].to_i < 0
  puts "Negative bottles can't exist! This isn't prohibition!"
  i_dont_think_so_time = true
end

if split_start.length > 2
  puts "Just type  'sing & and number less than 100 but greater than 0'"
end

if i_dont_think_so_time == false
  num = split_start[1].to_i
  while num > 0
    puts "#{num} bottles of beer on the wall"
    puts "#{num} bottles of beer!"
    puts "Take one down, pass it around,"
    num = num -1
    puts "#{num} bottles of beer on the wall!"
  end

  if num == 0
    puts "we are very drink"
  end
end