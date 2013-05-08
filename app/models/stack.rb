class Stack
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Versioning

  field :name, type: String
  field :description, type: String
  field :is_custom, type: Boolean

  has_and_belongs_to_many :tags
end


# class Stack
#   include MongoMapper::Document

#   key :name, String
#   key :description, String
#   key :is_custom, Boolean
#   key :tag_ids, Array

#   many :tags, :in => :tag_ids

#   timestamps!
# end
