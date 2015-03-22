def echo(string)
	return string
end

def shout(string)
	return string.upcase
end

def repeat(string, a=2)

	sentence = "#{string} " * a
	return sentence.strip
end

def start_of_word(string, n)

	result = ""
	idx = 0

	while idx < n
		result += string[idx]
		idx += 1
	end

	return result
end

def first_word(string)

	words = string.split
	return words.first
end

#def titleize(string) 

#	words = string.split
#	capitals = ""
#	idx = 0

#	while idx < words.length
#		capitals += ((words[idx][0].upcase) + words[idx][1..-1]) + " "
#		idx += 1
#	end

#	return capitals.strip
#end

def titleize(string)

	words = string.split(" ")
	capitals = ""
	little_words = ["and", "if", "the", "or", "a", "is", "an", "over", "in", "of", "on"]
	
	words.each do |word|
		if little_words.include?(word)
			word.downcase!
		else
			word.capitalize!
		end
	end

	words[0].capitalize!

	words.each do |word|
		capitals += word + " "
	end

	return capitals.strip
end
