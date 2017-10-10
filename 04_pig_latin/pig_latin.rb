#write your code here :  code Louis ! Correction ligne 24 = on peut mettre des lettres seules
def translate (text)

	#We code, with the hypothesis that their is no other characters than space and letters
	#Split the text into an array
	array_downcase = []
	array_downcase = text.downcase.split

	#Define a vowel array for flow control
	vowel_array = ["a","e","i","o","u","y"]

	#Build a text based on Pig Latin modifications of array_downcase
	text_pig_latin = ""

	array_downcase.each do |i|
		#if the word starts with a vowel add "ay" at the end of the word
		if vowel_array.include?(i[0])
			text_pig_latin << i + "ay "
		
		#if the word starts with a bunch of consonents put them at the end of the word and add "ay "
		else
			
			#Identify the last consonent position in the word
			j=0  #correction : autrement le code ne prend pas en compte les lettres seules
			until vowel_array.include?(i[j])
				j += 1
			end

			#Take into account "qu" as single consonnant
			if (i[j-1] == "q" && i[j] == "u")
				text_pig_latin << i[(j+1)..-1] + i[0..j] + "ay "
			else	
				text_pig_latin << i[j..-1] + i[0..(j-1)] + "ay "
			end	

		end
	end

	text_pig_latin.chop!

end
puts translate ("apple banana cherry eat pie three school quiet square the quick brown fox")
puts translate ("Je m'en balek d'aller a carrefour")
