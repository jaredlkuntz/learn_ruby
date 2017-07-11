class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end 

  def time_string()
    @hours = seconds / 60 / 60
    @minutes = (seconds / 60) % 60
    @seconds = seconds % 60

    @hours = padded(@hours)
    @minutes = padded(@minutes)
    @seconds = padded(@seconds)
 
    @hours + ':' + @minutes + ':' + @seconds
  end

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
