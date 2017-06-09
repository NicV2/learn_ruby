class Book
# write your code here
attr_accessor :title



def title
	
	capitalize_exceptions = ["and", "or", "a", "the", "an", "in", "of"]
	book_title = @title.split

	book_title.each do |word|
		if capitalize_exceptions.include? word
		#if word != "and" && word != "in" && word != "the" && word != "of" &&
			#word != "a" && word != "an"
		else
			word.capitalize!
		end
	end

	#x = 1
    #while x < book_title.length
	  #if book_title[x] != "and" && book_title[x] != "over" && book_title[x] != "the" && 
	  	#book_title[x] != "or"  && book_title[x] != "a" && book_title[x] != "an" && 
		#book_title[x] != "in" && book_title[x] != "of"
			#book_title[x] = book_title[x].capitalize
	  #end
	  #x = x + 1
    #end
    book_title[0] = book_title[0].capitalize
	
	book_title.join(" ")

end



end
