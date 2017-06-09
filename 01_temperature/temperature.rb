#write your code here
def ftoc(fahrenheit)
	celcius = (fahrenheit-32).to_f * 5 / 9
end

def ctof(celcius)
	fahrenheit = celcius.to_f * 9 / 5 + 32
end
