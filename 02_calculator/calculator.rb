#write your code here

#Addition
def add (number1, number2, number3)
	number1+number2+number3
end

#Soustraction
def subtract (number1, number2, number3, number4)
	number1-number2-number3-number4
end

#Somme
def sum (array)
	if array.length == 0
		0 #somme nulle
	else
		(array).inject {|sum, n| sum + n }
	end	
end

#Multiplication
def multiply(array)
	if array.length == 0
		0 #si 0 est dans array
	else
		(array).inject {|prod, n| prod * n }
	end	
end


#Puissance
def power (number1, number2)
	number1**number2
end

#Factorielle
def factorial (number)
	factor = 1
	if number == 0
		factor = 0
	else
		(1..number).each do |i|
			factor *= i
		end
	end
	factor
end