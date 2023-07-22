def sub_string(string,dictionary)
	string_list = string.split(' ')
	dic = {}
		for word_in_string in string_list
			for word in dictionary
				if word.include?(word_in_string)
					if dic[word] == nil
						dic[word] = 1
					else 
						dic[word] += 1
					end
				elsif word_in_string.include?(word)
					if  dic[word] == nil
						dic[word] = 1
					else 
						dic[word] += 1
					end
				end 
			end
		end
		p dic
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
sub_string("Howdy partner, sit down! How's it going?", dictionary)