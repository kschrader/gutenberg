class Comment
  include DataMapper::Resource

  property :id,         Integer, :serial => true
  property :posted_by,  String
  property :email,      String
  property :url,        String
  property :body,       Text

  belongs_to :post
  
end
