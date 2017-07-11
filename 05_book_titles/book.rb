#Author: Jared Kuntz
#Project: The Odin Project: Ruby Project

class Book
  attr_accessor :title  

  #Overloaded assignment operator which properly capitalizes titles upon assignment.
  def title=(title)
    little_words = ['and', 'over', 'the', 'in', 'of', 'a', 'an']
    words = title.split(' ')
    words.each do |word|
      if ( !little_words.include?(word) or words.index(word) == 0)
        word.capitalize!
      end
    end
    @title = words.join(' ')
  end
end
