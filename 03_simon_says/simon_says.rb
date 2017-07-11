#Author: Jared Kuntz
#Project: The Odin Project: Ruby Project

#Returns whatever string is entered to the console
#Inputs: string
#Output: string
def echo(statement)
  statement
end

#Returns the given string in all capital letters
#Input: string
#Output: string
def shout(statement)
  statement.upcase
end

#Returns a string composed of the given string repeated a given number of times,
#separated by spaces. If no number of times is given, the default is 2.
#Inputs: string, number
#Output: string
def repeat(statement, count = 2)
   ((statement + ' ') * count).strip!
end

#Returns the first part of word, whose length is equal to a given number of characters.
#Inputs: string, number
#Outputs: string
def start_of_word(word, characters)
  word[0..(characters - 1)]
end

#Returns the first word of string, delimited by a single space (' ')
#Inputs: string
#Output: string
def first_word(statement)
  words = statement.split
  words[0]
end

#Capitalizes the for letter of each significant word in a string, as would be appropriate
#in a movie or book title. Words which should not be capitalized are specified in the 
#little_words array.
#Inputs: string
#Output: string
def titleize(statement)
  little_words =  ['and', 'over', 'the']
  words  = statement.split(' ')
  words.each do |word|
    if ( !little_words.include?(word) or words.index(word) == 0)
      word.capitalize! 
    end
  end
  words.join(' ')
end
