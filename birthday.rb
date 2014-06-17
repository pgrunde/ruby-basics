filename = 'birthday_data.csv'
txt = File.open(filename)
txt = txt.read
big_arr = []

txt.each_line do |line|
  data = line.split(',')
  big_arr.push data
end

big_arr.delete_at(0)

puts "Who's age would you like to know?"
name = gets.chomp
selected_arr = nil

iter = 0
big_arr.each do |m|
  if name == big_arr[iter][1]
    selected_arr = big_arr[iter]
  end
  iter = iter + 1
end

if selected_arr != nil
age = selected_arr[2].split('/')
year = age[0].to_i
month = age[1].to_i
day = age[2].to_i
current_age = ((Time.now - Time.local(year, month, day))/60/60/24/365).to_i

puts "You've selected #{selected_arr[1]} #{selected_arr[0]}!"
puts "#{selected_arr[1]}'s birthday is #{selected_arr[2]}!"
puts "#{selected_arr[1]} is #{current_age}."
else
  puts "Name not available"
end