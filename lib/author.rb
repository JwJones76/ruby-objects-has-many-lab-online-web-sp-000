class Author
  attr_accessor :title

  @@all = []

  def initialize(title)
    @name = title
    @@all << self
  end

  def self.all
    @@all
  end

  
  def add_post(post)
    post.author = self
  end

  
  def add_post_by_title(title)
    song = Post.new(title)
    @posts << post
    post.author = self
    @@sounds_count += 1
  end

 
  def self.post_count
    Post.all.count
  end
end