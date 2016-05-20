require 'rspec'
require 'rspec/its'

arr = 1..10000
new_array = arr.to_a.select {|num| num % 3 == 0}.reject {|num| num < 5000}.reverse
p new_array
