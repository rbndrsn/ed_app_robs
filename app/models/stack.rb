class Stack
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Versioning

  field :name, type: String
  field :description, type: String
  field :is_custom, type: Boolean

  has_and_belongs_to_many :tags
end