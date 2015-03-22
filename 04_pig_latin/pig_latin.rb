#def translate(word)

#	vowels = ["a", "e", "i", "o", "u", "y"]

#	while 
#		if vowels.include?(word[0].downcase)
#			return word + "ay"
#		else
#			return word[1..-1] + word[0].downcase + "ay"
#		end
#	end
#end

def translate(word)
	
	words = word.split(" ")
	vowels = ['a', 'e', 'i', 'o', 'u', 'y']

	words.map! do |word|
		until vowels.include?(word[0].downcase) 
			if word[0..1] == 'qu'
				word = word [2..-1] + word[0..1]
			else
				word = word[1..-1] + word[0]
			end
		end
		
		word = word + "ay"
	end

	return words.join(' ')
end
