def is_it_a_new_number?(number)
  array_number = number.to_s.split('').reverse

  all_permutations = array_number.permutation.map(&:join)

  without_zero = all_permutations.reject { |perm| perm[0] == '0' }

  if without_zero.min == number.to_s
    true
  elsif without_zero.min != number.to_s
    false
  end
end

p is_it_a_new_number?(589)
