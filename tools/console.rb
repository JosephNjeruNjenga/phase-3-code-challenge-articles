require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
joe = Author.new("Joe")
mag1 = Magazine.new("Life", "Lifestyle")
art1 = Article.new(joe, mag1, "Life Lessons Pt. 1")
art2 = Article.new(joe, mag1, "Life Lessons Pt. 2")
lynn = Author.new("Lynn")
art3 = Article.new(lynn, mag1, "Exploring Life")
art4 = Article.new(lynn, mag1, "Condescending Life")
mag2 = Magazine.new("Dream", "Drama")
art5 = Article.new(joe, mag2, "How to")
art6 = Article.new(joe, mag1, "Life Lessons Pt. 3")









### DO NOT REMOVE THIS
binding.pry

0
