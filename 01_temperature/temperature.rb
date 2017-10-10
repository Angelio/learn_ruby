#write your code here
def ftoc ( temperature_farenheint )
  temperature = 0.0
  if temperature_farenheint.is_a? Float
  	temperature = temperature_farenheint
  else
  	temperature = temperature_farenheint.to_f
  end
  temperature_celsius = (temperature - 32.0) * 5 / 9 #f° to c°
end

#INVERSE

def ctof ( temperature_celsius )
  temperature = 0.0
  if temperature_celsius.is_a? Float
  	temperature = temperature_celsius
  else
  	temperature = temperature_celsius.to_f
  end
  temperature_farenheint = temperature * 9 / 5 + 32.0  #c° to f°
end
