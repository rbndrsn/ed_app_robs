class Stack
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Versioning

  field :name, type: String
  field :description, type: String
  field :is_custom, type: Boolean

  validates :name, :description, presence: :true 
  validates :name, :uniqueness => { :case_sensitive => false }
  validates :description, presence: :true

  validates_presence_of :cards

  embeds_many :cards

  accepts_nested_attributes_for :cards, autosave: true, reject_if: :all_blank, allow_destroy: true

  has_and_belongs_to_many :tags
end
