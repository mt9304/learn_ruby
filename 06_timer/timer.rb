class Timer
	attr_accessor :seconds, :time_string

	def initialize()
		@seconds = 0
	end

	def seconds=(seconds)
		@seconds = seconds
		sec = seconds
		min = 0
		hrs = 0

		if seconds > 60
			min = seconds/60
			sec = seconds%60
		end

		if min > 60
			hrs = min/60
			min = min%60
		end

		@time_string = format("%02d:%02d:%02d", hrs, min, sec)
	end
end
