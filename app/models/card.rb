class Card
  include Mongoid::Document
  include Mongoid::Timestamps

  field :front, type: String
  field :back, type: String
  field :remembered, type: Integer

  embedded_in :stack

end