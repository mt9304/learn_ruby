#write your code here
def echo(say)
	"#{say}"
end

def shout(say)
	"#{say}".upcase
end

def repeat(say)

end

def repeat(say, x = 2)
	("#{say} " * x)[0...-1]
end

def start_of_word(word, number)
	#a = word.split("")
	#b = a[0...number].join("")
	word[0,number]
end

def first_word(word)
	word.split(" ")[0]
end

def titleize(word)
	lwords = ["And", "The", "Over"]
	s = word.split.map(&:capitalize)
	s.each do |x|
		if lwords.include? x
			x.downcase!
		end
	end
	s[0].capitalize!
	s.join(" ")
end