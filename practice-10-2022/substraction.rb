def substraction(first, second)
  return if second > first

  while second != 0
    borrow = (~first) & second
    first = first ^ second
    second = borrow << 1
    second
  end
  first
end

puts substraction(10, 4)
