arr = ["b", "a"]
arr = arr.product([Array(1..3)])
puts arr
puts "---"
puts arr.first.delete(arr.first.last)
puts "---"
puts arr
# returns ["b"]
# value of arr is ["b"]