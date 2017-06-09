class Timer
  attr_accessor :seconds

def seconds
	if @seconds == nil
	  @seconds = 0
	end
	@seconds

end


def time_string 
	hours = 0
	minutes = 0
	
	if @seconds >= 60
		minutes = @seconds / 60
		@seconds = @seconds % 60

		if minutes >= 60
			hours = minutes / 60
			minutes = minutes % 60
		end
	end

	if @seconds < 10
		@seconds = "0" + @seconds.to_s
	end
		
	if minutes < 10
		minutes = "0" + minutes.to_s
	end

	if hours < 10
		hours = "0" + hours.to_s
	end

	time_display = hours.to_s + ":" + minutes.to_s+ ":" + @seconds.to_s
end


end