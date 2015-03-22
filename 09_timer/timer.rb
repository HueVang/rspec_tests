class Timer 

	def initialize 
		@seconds = 0
	end

	def seconds=(seconds)
		@seconds = seconds
	end

	def time_string

		hours = 0
		minutes = 0
		sec = 0

		while @seconds > 0
			if @seconds >= 3600
				hours += 1
				@seconds -= 3600
			elsif @seconds >= 60
				minutes += 1
				@seconds -= 60
			else
				sec += 1
				@seconds -= 1
			end
		end

		clock = [hours, minutes, sec]
		clock.map! do |time|
			if time < 10
				time = "0#{time}"
			else
				time = "#{time}"
			end
		end
		
		@seconds = clock.join(":")	
	end

	def seconds
		@seconds
	end
end
