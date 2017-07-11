#write your code here
def add(a, b) 
  a + b
end

def subtract(a, b)
  a - b
end

def sum(numbers)
  sum = 0
  numbers.each do |number|
    sum = sum + number
  end
  sum
end

def multiply(numbers)
  product = 1
  numbers.each do |number|
    product = product  * number
  end
  product
end

def power(a, b)
  product = 1
  b.times do
    product = product * a
  end
  product
end

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
