#write your code here
def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def multiply(num1, num2, num3)
  if (num1 == true or num2 == true or num3 == true)
    num1 * num2 * num3
  elsif(num1 == true and num2 == true and num3 == false)
    num1 * num2
  end
end

def divide(num1, num2)
  num1 / num2
end

def sum(array)
  if(array == [])
    0
  elsif(array != [])
   a = 0
   array.each {|i| a += i}
   a
  end
end

def power(base,power)
  base**power
end