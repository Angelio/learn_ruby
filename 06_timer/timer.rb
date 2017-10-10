class Timer
  #write your code here

  attr_accessor :seconds, :min_in_hour, :sec_in_hour

  def initialize
  	@seconds = 0
  	@min_in_hour = 60
  	@sec_in_hour = 60 * 60
  end

  def time_string
   	hours = seconds / sec_in_hour
  	minutes = (seconds - hours * sec_in_hour) / min_in_hour
  	sec = (seconds - hours * sec_in_hour - minutes * min_in_hour) 

  	if hours < 10 
  		hours = "0" + hours.to_s
	else
		hours = hours.to_s
  	end

  	if minutes < 10 
  		minutes = "0" + minutes.to_s
	else
		minutes = minutes.to_s
  	end
  	if sec < 10 
  		sec = "0" + sec.to_s
	else
		sec = sec.to_s
  	end  	

  	chrono =  hours + ":" + minutes + ":" + sec

  end

end


