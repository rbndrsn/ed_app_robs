class Tag
  include MongoMapper::Document

  key :name, String
  belongs_to :stack

  timestamps!
end
