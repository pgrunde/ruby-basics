txt = File.open('birthday_data.csv')
txt = txt.read
big_arr = []

txt.each_line do |line|
  data = line.split(',')
  big_arr.push data
end
big_arr.delete_at(0)

puts "Enter a name to retrieve."
name = gets.chomp
selected_arr = nil

iter = 0
big_arr.each do |d|
  if name == big_arr[iter][1]
    selected_arr = big_arr[iter]
  end
  iter = iter + 1
end

if selected_arr == nil
  puts "That is not a name I recognize."
else
  puts "You've selected #{selected_arr[1]} #{selected_arr[0]}!"
  puts "#{selected_arr[1]} was born on #{selected_arr[2]}!"
  age_arr = selected_arr[2].split('/')
  year = age_arr[0].to_i
  month = age_arr[1].to_i
  day = age_arr[2].to_i
  age = ((Time.now - Time.local(year, month, day))/60/60/24/365.25).to_i
  puts "#{selected_arr[1]} is #{age} years old."
end
