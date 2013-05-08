class Stack
  include MongoMapper::Document

  key :name, String
  key :description, String
  key :is_custom, Boolean

end
