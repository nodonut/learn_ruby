#write your code here

def translate(text)
  vowels = ['a','e','i','o','u']
  if(text[0] == 'q' && text[1] == 'u')
    text[2..-1] + text[0..1] + 'ay'
  elsif(vowels.include?(text[0]) == false && text[1] == 'q' && text[2] == 'u')
    text[3..-1] + text[0..2] + 'ay'
  elsif(vowels.include?(text[0]) == false && vowels.include?(text[1]) == false && vowels.include?(text[2]) == false)
    text[3..-1] + text[0..2] + 'ay'
  elsif(vowels.include?(text[0]) == false && vowels.include?(text[1]) == false)
    text[2..-1] + text[0..1] + 'ay'
  elsif(vowels.include?(text[0]) == true)
    text + 'ay'
  elsif(vowels.include?(text[0]) == false)
    text[1..-1] + text[0] + 'ay'
  end
end

def translateWords(phrase)
  finalList = []
  splitWords = phrase.split
  
  splitWords.each do |i|
    finalList << translate(i)
  end

  finalList.join(' ')
end