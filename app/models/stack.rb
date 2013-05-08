class Stack
  include MongoMapper::Document

  key :name, String
  key :description, String
  key :is_custom, Boolean
  key :tag_ids, Array

  many :tags, :in => :tag_ids

  timestamps!
end
