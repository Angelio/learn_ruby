#write your code here

#normal
def echo (sentence)
	sentence
end
puts echo ("Yo !")

#gueuler
def shout (sentence)
	sentence.upcase
end
puts shout ("Allo quoi !")


#repeter
def repeat (sentence, repeat = 3)

	end_sentence = sentence

	(1..(repeat-1)).each do |i|
		end_sentence += " " + sentence
	end

	end_sentence
end
puts repeat ("euh ")

#début mot
def start_of_word (sentence, nb_letters=1)
	sentence[0..(nb_letters-1)]
end
puts start_of_word ("tu m'entends ou pas ?")

#premier mot
def first_word (sentence)
	sentence_split = sentence.scan(/[\w']+/)[0] #https://stackoverflow.com/questions/1235785/ruby-regex-scan#1235811
end
puts first_word ("tu m'entends ou pas ?")

#Fonction titleize
def titleize (sentence)
	table_sentence = sentence.split(' ')

	sentence_finale = ""
	exceptions = ["the", "over", "and"] 
	
	#Remplir la phrase finale

	table_sentence.each do |i|
		if exceptions.include?(i)
			sentence_finale += i + " "
		else
			sentence_finale += i.capitalize + " "
		end
	end

	sentence_finale.chop!

	sentence_finale[0].upcase + sentence_finale[1..-1]

end

puts titleize ("tu m'entends ou pas ?")



