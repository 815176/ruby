def greeting(name)
  puts "hello #{name}"
  return name
end

puts "What is your name?"
greeting(gets.chomp)