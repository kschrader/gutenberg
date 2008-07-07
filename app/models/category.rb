class Category
  include DataMapper::Resource

  property :id,         Integer, :serial => true
  property :name,       String
  property :permalink,  String

  has n, :categorizations
  has n, :posts,      :through => :categorizations
end
