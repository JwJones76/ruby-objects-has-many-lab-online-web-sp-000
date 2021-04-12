class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @name = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if @author == nil
      return nil
    end
    @author.name
  end
end