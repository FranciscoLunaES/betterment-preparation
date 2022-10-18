def map_letters(word)
  my_hash = {}
  word.split('').each_with_index do |letter, index|
    if my_hash.key?(letter)
      my_hash[letter].push(index)
    else
      my_hash[letter] = [index]
    end
  end
  my_hash
end

puts map_letters('dodo')
