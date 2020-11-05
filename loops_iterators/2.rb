x = ""

while x != "STOP"
  puts "Hey waht's up"
  ans = gets.chomp
  puts "Type STOP if you want to stop."
  input = gets.chomp
  if input == "STOP"
    break
  end
end