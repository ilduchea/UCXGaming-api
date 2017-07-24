class GameSystem
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :character_sheets
  has_many :sections, validate: false

  validates :name, :publisher, presence: true

  field :name
  field :publisher
  field :description

end
