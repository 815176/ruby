words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

=begin

MY WAY

initialize empty hash to store words as keys and histograms as values
for each word
  create histogram
  add word and histogram to hash
get unique histograms
for each histogram, go through hash and build array of words

=end

puts ""

puts "Words:"
puts "#{words}"

puts ""

puts "Anagram groups:"

# initialize empty hash to store words as keys and histograms as values
words_and_histograms = Hash.new

# for each word
words.each do | word |
  # create histogram
  histogram = Hash.new(0)
  word.each_char do | char |
    histogram[char] += 1
  end
  # add word and histogram to hash
  words_and_histograms[word] = histogram
end

# get unique histograms
unique_histograms = words_and_histograms.values.uniq

# for each unique histogram
unique_histograms.each do | histogram |
  # puts array of all words what have that histogram
  puts "#{words_and_histograms.map { |k, v| v == histogram ? k : nil}.compact}"
end

puts ""

=begin

LS WAY

idea is that two words are anagrams iff their chars sorted alphabetically are the same

initialize an empty hash
for each word
  sort the chars of the word alphabetically and call this the key
  does the key exist in the hash? if so, push the word onto the value of the key, else set the value of the key to an array with one element word
print

=end

# initialize an empty hash
anagram_groups = {}

# for each word
words.each do | word |
  # sort the chars of the word alphabetically and call this the key
  key = word.split('').sort.join
  # does the key exist in the hash?
  if anagram_groups.has_key?(key)
    # if so, push the word onto the value of the key
    anagram_groups[key].push(word)
  else
    anagram_groups[key] = [word]
    # else set the value of the key to an array with one element word
  end
end

# print
anagram_groups.each do | k, v |
  p v
end