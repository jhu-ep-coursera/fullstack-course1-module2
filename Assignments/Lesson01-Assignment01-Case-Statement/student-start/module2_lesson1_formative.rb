some_var = "false" # assigning a variable to the string "false"
another_var = "nil"  # assigning a variable to the string "nil"

if some_var == "pink elephant"
  puts "Don't think about the pink elephant!" # this line not executed because some_var is not equal to string "pink elephant"

elsif another_var.nil?
  puts "Question mark in the method name?"  # this line not executed because another_var is not nil as all strings 
                                             # are always true

elsif some_var == false
  puts "Looks like this one should execute" # this line not executed because some_var is not false, it is true as all strings 
                                             # are true

else
  puts "I guess nothing matched... But why?"  # this gets executed as all the previous conditions are false
end
