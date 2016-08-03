class Book
	attr_accessor :title

	r = ""

	def title=(name)
		#r = name.split
		result =""
		lword = "And", "An", "The", "A", "An", "In", "Of"

		r = name.split.map(&:capitalize)

		r.each do |word|
			if lword.include? word
				word.downcase!
			end
		end
		#r.each do |word|
		#	if (!lword.include? word)
		#		result << word.capitalize + " "
		#	else
		#		result << word + " "
		#	end
		#end

		#r = result[0,result.length-1]

		r[0].capitalize!
		@title = r.join(" ")
	end
end