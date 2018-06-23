puts "Hello there welcome to the time capsule. What is your name?"
name = gets.chomp

time_capsule = []
while true
  puts "OK #{name} what will you be putting in the capsule for future generations?"
  puts "Type finished when you're done adding items."

  item = gets.chomp

  if item == "finished"
    break
  else
    puts "How many would you like to put in?"
    amount = gets.chomp
    item += " (#{amount})"
    time_capsule << item
  end
end
if time_capsule == []
  puts "Hey you didn't put anything in!"
else
  puts "Thanks for using our time capsule #{name}. Here's what you put in:"
  time_capsule.each do |item|
    puts "* #{item}"
  end
end
