#write your code here
def translate(statement)
  words = statement.split(' ')
  words.map! { |word|    word = translate_word(word)}
  words.join(' ').strip
end

def translate_word(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  characters = word.split('')
  output = ''
  if (vowels.include?(characters[0]))
    output = word + 'ay'
  else
  
    for i in 1..characters.length
      if (vowels.include?(characters[i]))
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

