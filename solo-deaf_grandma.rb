puts "HELLO THERE SONNY!"
reply = gets.chomp

while reply != 'BYE'
  if reply != reply.upcase
    puts "HUH? SPEAK UP SONNY"
  else
    date = rand(20) + 1930
    puts "NO, NOT SINCE #{date}"
  end
  reply = gets.chomp
end
puts "BYE SONNY!"