#write your code here
def echo(input)
	input
end

def shout(input)
	input.upcase
end

def repeat(input, x=2)
	phrase = input + " " + input
	while x > 2
	  phrase = phrase + " " + input
	  x = x -1
	end
	phrase
end

def start_of_word(input, x)
	input[0..(x-1)]
end

def first_word(input)
	input.split(" ").first	
end

def titleize(input)
    
	titleArray = input.split(" ")
	
    x = 1
    while x < titleArray.length
	  if titleArray[x] != "and" && titleArray[x] != "over" && titleArray[x] != "the"
			titleArray[x] = titleArray[x].capitalize
	  end
	  x = x + 1
    end
    titleArray[0] = titleArray[0].capitalize

	titleArray = titleArray.join(" ")


	
end