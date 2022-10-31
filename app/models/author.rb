class Author
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.find_by_name(name)
    @@all.find {|mag| mag.name == name}
  end
  def self.all
    @@all
  end
  def articles
    Article.all.select {|article| article.author.name == @name}
  end
  def magazines
    articles.map {|article| article.magazine}.uniq
  end
  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end
  def topic_areas
    self.magazines.map {|mag| mag.category}
  end
end
