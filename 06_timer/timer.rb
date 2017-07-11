#Author: Jared Kuntz
#Project: The Odin Project: Ruby Project

class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end 

  #Convert a given number of seconds into an hour-minute-second representation, formatted
  #as HH:MM:SS.
  #
  #Input: none
  #Output: string
  def time_string()
    #Get numerical representations for each value
    @hours = seconds / 60 / 60
    @minutes = (seconds / 60) % 60
    @seconds = seconds % 60

    #Convert the values to properly formatted strings
    @hours = padded(@hours)
    @minutes = padded(@minutes)
    @seconds = padded(@seconds)
 
    #return the string
    @hours + ':' + @minutes + ':' + @seconds
  end

  #Pads time values less than ten with zeroes, to allow for proper formatting. 
  #E.G. 0 becomes "00"
  #
  #Input: number
  #Output: string
  def padded(n)
    output = ''
    if (n < 10)
      output = '0' + n.to_s
    else
      output = n.to_s
    end
   output
   end
end
