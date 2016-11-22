some_var = "false"
another_var = "nil"

#Manipulate the variable some_var to see what output executes
case some_var
when "pink elephant"
	puts "1 -->Don't think about the pink elephant!"
when false
	puts "2 -->Looks like this one should execute"
else
	puts "3 -->I guess nothing matched... But why?"
end

#Manipulate the variable some_var to see what output executes
case another_var
when nil
	puts "4 -->Question mark in the method name?"
end