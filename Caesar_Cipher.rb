def caesar_cipher(message,key)
	if message.is_a? Numeric
		p "can't encode numbers"
	elsif key.is_a? String
		p "key can't be a letter"
	else
		encoded_message = []
		alphabet_list = ("a".."z").to_a #['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
		message = message.split('')
		message.each do | letter|
			alphabet_list.each_with_index do |alphabet, alphabet_index|
				if alphabet == letter.downcase
					encoded_message.push(alphabet_list[alphabet_index + key])
				#elsif letter == ' ' && letter != alphabet_list
				#	encoded_message.push(nil)
				end
			end
		end
		temp_list = []
		new_list = []
		for letters in encoded_message
			if letters != nil
				temp_list.push(letters)
			elsif letters == nil
				temp_list.push(' ')
			end
		end
		p temp_list#.join('')
	end
end


def decode_caesar_cipher(message,key)
	if message.is_a? Numeric
		p "can't encode numbers"
	elsif key.is_a? String
		p "key can't be a letter"
	else
		encoded_message = []
		alphabet_list = ("a".."z").to_a #['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
		message = message.split('')
		message.each do | letter|
			alphabet_list.each_with_index do |alphabet, alphabet_index|
				if alphabet == letter.downcase
					encoded_message.push(alphabet_list[alphabet_index - key])
				elsif letter ==  " "
					encoded_message.push(nil)
				end
			end
		end
		temp_list = []
		new_list = []
		for letters in encoded_message
			if letters != nil
				temp_list.push(letters)
			else
				temp_list.push(' ')
			end
		end
		p encoded_message#.join('')
	end
end

caesar_cipher('emma e no go better for you i yo lie give me ',7)
decode_caesar_cipher("ltthluvnvil  lymvy v p vsplnp ltl",7)