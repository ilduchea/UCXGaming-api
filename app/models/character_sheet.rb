class CharacterSheet
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :game_system
  has_many :sections, as: :sectional, validate: false

  validates :name, :description, presence: true

  field :name
  field :description
end
