def max(one_param, *numbers, another)
  # Parameter passed in becomes an array
  numbers.max
end

puts max("something", 7, 32, -4, "more")