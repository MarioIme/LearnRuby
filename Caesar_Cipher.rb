def caesar_cipher(message,key)
	if message.is_a? Numeric
		p "can't encode numbers"
	elsif key.is_a? String
		p "key can't be a letter"
	else
		encoded_message = []
		alphabet_list = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
		message = message.split('')
		message.each do | letter|
			alphabet_list.each_with_index do |alphabet, alphabet_index|
				if alphabet == letter.downcase
					encoded_message.push(alphabet_list[alphabet_index + key])
				end
			end
		end
		p encoded_message.join('')
	end
end

caesar_cipher('messages',7)
