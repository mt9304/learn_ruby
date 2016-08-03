#write your code here
def translate(text)
	vowel = ["a","e","i","o","u"]
	words = text.split(" ")

	v = 0
	p = ""
	g = ""

	words.each do |word|
		f = 0
		if (vowel.include? word[0])
			v += 0

		elsif (word[0,2] == "qu")
				v = 1
				f += 2
		
		else
			if (!vowel.include? word[0])
				v = 1
				f += 1
				if (!vowel.include? word[1])
					f += 1
					if (!vowel.include? word[2])
						f += 1
					elsif (word[1,2] == "qu")
						f += 1
					end
				end
			end
		end

		p = word[f,word.length] + word[0,f]*v + "ay"
		g << p + " "
	end
	g[0,g.length-1]
end