class Book
# write your code here
  attr_accessor :title

  def title 
    articles_to_avoid = ['and','the','a','an','in','of']
    words = @title.split(' ')
    words = [words[0].capitalize] + words[1..-1].map{|x| (articles_to_avoid.include?(x) ? x : x.capitalize)}
    @title = words.join(' ')
  end

end
