puts "HEY THERE SCRUMPTIOUS SONNY!"
reply = STDIN.gets.chomp()

while true
  if reply == 'BYE'
    puts "BYE, SONNY!"
    return false
  end
  if reply != reply.upcase
    puts "HUH? SPEAK UP SONNY!"
  else
    rand_year = rand(20)+1930
    puts "NO, NOT SINCE #{rand_year}!"
  end
  reply = STDIN.gets.chomp()
end
