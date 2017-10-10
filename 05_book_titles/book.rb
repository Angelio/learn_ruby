class Book
	# write your code here
	attr_accessor :title

	def title= (publishing)
		table_name = publishing.split(' ')
		final_title = ""
		exceptions = ["the", "a", "an", "of", "in", "and", "or"] 

		table_name.each do |x|
			if exceptions.include?(x)
				final_title += x + " "
			else
				final_title += x.capitalize + " "
			end
		end

		final_title.chop!

		final_title = final_title[0].upcase + final_title[1..-1]


		#Assigner le titre au nouveau nom
		@title = final_title

	end
end


