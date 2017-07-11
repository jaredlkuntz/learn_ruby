#Author: Jared Kuntz
#Project: The Odin Project: Ruby Project

#Translates a single word following two rules: 
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and 
#then add an "ay" sound to the end of the word.
#
#Input: string
#Output: string
def translate_word(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  characters = word.split('')
  output = ''

  #If the word begins with a vowel, process it according to rule 1
  if (vowels.include?(characters[0]))
    output = word + 'ay'  
  else
    #Start iterating over the characters, looking for the first vowel
    for i in 1..characters.length
      if (vowels.include?(characters[i]))
        #Count "qu" as a consonant
        if (characters[i] == 'u' and characters[i - 1] == 'q')
          next
        else
            output = word[i..characters.length] + word[0..i - 1] + 'ay'
        break
        end      
      end
    end
  end
  output 
end

#This method splits a complete statement into individual words, translates them, then 
#reassmebles them with spaces inbetween.
#
#Inputs: string
#Output: string
def translate(statement)
  words = statement.split(' ')
  words.map! { |word|    word = translate_word(word)}
  words.join(' ').strip
end



