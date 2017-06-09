#write your code here
def translate(word)
	vowels = ["a", "e", "i", "o", "u"]
	punctuation = ["!", ",", ".", "?"]
    pig_latin_array = []
    	
    word_array = word.split(/\s/)

    word_array.map do |word|
    	#checking if capital, then re-capitalize first letter at end
    	if word == word.capitalize
    		capital = true
    		word.to_s.downcase!
    	end

    		

	  	if vowels.include? word[0]
      	elsif word.include? "qu" 
        	word.scan(/./)

       		if word.include? "u"
        		found_u = word.index("u")
        	end
	    
       		z = 0
			while z < found_u + 1
				x=0
				temp = word[0]
				while x < word.length-1
					word[x] = word[x + 1]
					x = x + 1
				end
				word[word.length-1] = temp
				z = z + 1
	    	end

	  	else
			word.scan(/./)
        
        	y=1
        	while y < word.length
        		if vowels.include? word[y]
        			found_vowel = y
        			y = word.length
        		end
        		y = y + 1
       		end
	    
        	z = 0
			while z < found_vowel
				x=0
				temp = word[0]
					while x < word.length-1
						word[x] = word[x + 1]
						x = x + 1
					end
				word[word.length-1] = temp
				z = z + 1
			end
	
	   	end
	   

	  	if capital 
	  		word.capitalize!
	  	end
		
		if word.include? "!" or word.include? "?" or word.include? "," or word.include? "."
    		punctuation_array = word.split("")
    		found_punctuation = []
    		if word.include? "!"
    			punctuation_index = word.index("!")
    			found_punctuation << punctuation_array.delete_at(punctuation_index)
    			found_punctuation << punctuation_array.delete("!")
    		elsif word.include? "?"
    			punctuation_index = word.index("?")
    			found_punctuation << punctuation_array.delete_at(punctuation_index)
    			found_punctuation << punctuation_array.delete("?")
    		elsif word.include? ","
    			punctuation_index = word.index(",")
    			found_punctuation << punctuation_array.delete_at(punctuation_index)
    			found_punctuation << punctuation_array.delete(",")
    		elsif word.include? "."
    			punctuation_index = word.index(".")
    			found_punctuation << punctuation_array.delete_at(punctuation_index)
    			found_punctuation << punctuation_array.delete(".")
    		end
    		
    		punctuation_array << "ay" << found_punctuation
    		word = punctuation_array.join("")
			pig_latin_array << word
		else  
		
		
	  	pig_latin_array << word.concat("ay")
	  end


    end

pig_latin_array * " "

#word_array * " "

end