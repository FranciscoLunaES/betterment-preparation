def recursively_string(word, counter)
  counter += 1
  first = word[0]
  word.slice!(0)
  word.insert(-counter, first)
  if counter >= word.length
    word
  else
    recursively_string(word, counter)
  end
end

puts recursively_string('paco', 0)
