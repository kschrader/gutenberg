class Categorization
  include DataMapper::Resource

  property :id,         Integer, :serial => true

  property :created_at, DateTime

  belongs_to :category
  belongs_to :post
end
