def can_divide_by?(number)
  return "No way!" if number.zero?
  "Sure"
end

puts can_divide_by? 3 # => Sure
puts can_divide_by? 0 # => No way!

