arr = (1..10000).to_a.sample(23)
p arr
p "Sorted numbers divisible by 3 and more than 5000:", arr.reverse!.select { |element| element > 5000 and element % 3 == 0 }
