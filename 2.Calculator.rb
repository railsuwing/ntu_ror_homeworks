def calculate_result(n1,n2,op)
	case op
		when 1 then return n1+n2
		when 2 then return n1-n2
		when 3 then return n1*n2
		when 4 then return n1/n2	
	end
end

op_arr=[0,'+','-','x','/']
puts"I am a Calculator.So........" 
printf'Enter First Number:'
n1=gets.chomp.to_f

printf'Enter Second Number:'
n2=gets.chomp.to_f

begin
	printf'Enter Operator: 1)+ 2)- 3)x 4)/:'
	op=gets.chomp.to_i
end while op<1 || op>4

puts"Answer: #{n1} #{op_arr[op]} #{n2} = " +calculate_result(n1,n2,op).to_s