class Book
# write your code here
  attr_accessor :title  



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
