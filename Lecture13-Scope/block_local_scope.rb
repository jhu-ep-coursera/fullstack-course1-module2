arr = [5, 4, 1] 
cur_number = 10 
arr.each do |cur_number| 
  some_var = 10 # not available outside the block 
  print cur_number.to_s + " " # => 5 4 1 
end 
puts # print a blank line 
puts cur_number # => 10 

adjustment = 5 
arr.each do |num;adjustment| 
  adjustment = 10 
  print "#{num + adjustment} " # => 15 14 11 
end 
puts 
puts adjustment # => 5 (Not affected by the block)


