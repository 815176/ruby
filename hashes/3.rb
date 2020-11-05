test_hash = {name: "Marcin", game: "arson"}

test_hash.each { | k, v | puts k }
test_hash.each { | k, v | puts v }
test_hash.each do | k, v |
  puts k
  puts v
end