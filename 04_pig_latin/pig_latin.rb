# #write your code here
# def translate(text)
#   splitText = text.split('')
#   alpha = ("a"..."z").to_a
#   vowels = ["a","e","i","o","u"]
#   consonants = alpha - vowels
#   if(splitText.include?('qu'))
#     splitText[2..-1].join('') + 'qu' + 'ay'
#   elsif(vowels.include?(splitText[0]))
#     text + 'ay'
#   elsif(consonants.include?(splitText[0]) && consonants.include?(splitText[1]) && consonants.include?(splitText[2]))
#     splitText[3..-1].join('') + splitText[0..2].join('') + 'ay'
#   elsif(consonants.include?(splitText[0]) && consonants.include?(splitText[1]))
#     splitText[2..-1].join('') + splitText[0..1].join('') + 'ay'
#   elsif(consonants.include?(splitText[0]))
#     splitText[1..-1].join('') + splitText[0].to_s + 'ay'
  
#   else
#     text
#   end
# end

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