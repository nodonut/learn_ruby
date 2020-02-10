#write your code here
def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(text,many = 2) 
  many.times.collect { text }.join(' ')
end

def start_of_word(text,index)
  text.slice(0,index)
end

def first_word(text)
  splitText = text.split(" ")
  splitText[0]
end

def titleize(text)
  text.split.map(&:capitalize).join(' ')
  
end