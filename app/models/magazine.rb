class Magazine
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end
  def self.all
    @@all
  end
  def articles
    Article.all.filter {|article| article.magazine.name == @name}
  end
  def authors
    articles.map{|art|Author.find_by_name(art.author.name)}
  end
  def contributors
    authors.uniq
  end
  def self.find_by_name(name)
    @@all.find {|mag| mag.name == name}
  end
  def article_titles
    articles.map {|art| art.title}
  end
  def contributing_authors
    busy_authors = []
    authors.tally.each {|key, value| value > 2 ? busy_authors << key : nil}
    busy_authors
  end
end
