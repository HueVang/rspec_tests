class Book

	def title=(word)

		words = word.split(" ")
		excluded = ['the', 'a', 'an', 'and', 'in', 'of']

		words.map! do |word|
			if excluded.include?(word)
				word.downcase
			else
				word.capitalize
			end
		end

		words[0].capitalize!

		@title = words.join(" ")
	end


	def title
		@title 
	end

end


# words that don't need to be capitalized: the, a, an, and, in, of