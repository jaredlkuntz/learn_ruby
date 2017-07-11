#Author: Jared Kuntz
#Project: The Odin Project: Ruby Project

#Addition
#Inputs: number, number
#Output: number
def add(a, b) 
  a + b
end

#Subtraction
#Inputs: number, number
#Output: number
def subtract(a, b)
  a - b
end

#Sum values in an array
#Inputs: an array of numbers
#Output: number
def sum(numbers)
  sum = 0
  numbers.each do |number|
    sum = sum + number
  end
  sum
end

#Multiply an arbitrary number of numbers
#Input: an array of numbers
#Output: number
def multiply(numbers)
  product = 1
  numbers.each do |number|
    product = product  * number
  end
  product
end

#Get the value of one number to the power of another
#Inputs: number, number
#Output: number
def power(a, b)
  product = 1
  b.times do
    product = product * a
  end
  product
end

#Return the factorial value of a single integer
#Input: number
#Output: number
def factorial(n)
  product = 1
  if (n > 1)
    while (n > 1) 
      product = product * n
      n = n - 1
    end
  end
  product
end
