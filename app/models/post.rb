class Post
  include DataMapper::Resource

  property :id, Integer, :serial => true
  property :title, Text
  property :body, Text
  property :created_at, DateTime
  property :published_at, DateTime
  property :published, Boolean

  has n, :comments
  has n, :categorizations
  has n, :categories, :through => :categorizations
  
  def body_html
    Markdown.new(self.body).to_html
  end

end
