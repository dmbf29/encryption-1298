ALPHABET = ('A'..'Z').to_a

def encrypt(text)
  #Split into letters
  #create an array of all letters
  #iterate over the letters using map
  #find the index of one letter from the array of all letters
  #subtract 3 from the index

  #Ask the array of all letters, what the letter is based on index - new letter
  #If it is not in the array, return the original character
  #Join the new letters back together
  text.chars.map do |character|
    index = ALPHABET.index(character)
    index ? ALPHABET[index - 3] : character
  end.join
end



# Before Refactor:
# def encrypt(text)
#   #Split into letters
#   #create an array of all letters
#   letters = text.split('')
#   #iterate over the letters using map
#   #find the index of one letter from the array of all letters
#   #subtract 3 from the index

#   #Ask the array of all letters, what the letter is based on index - new letter
#   #If it is not in the array, return the original character
#   #Join the new letters back together
#   alphabet =('A'..'Z').to_a
#   letters.map do |character|
#     index = alphabet.index(character)
#     if index.nil?
#       character
#     else
#       alphabet[index-3]
#     end
#   end.join
# end
