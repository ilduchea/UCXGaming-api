class CharacterSheet
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :game_system
  has_many :sections, validate: false

  validates :name, presence: true

  field :name
  field :description
end
