class GameSystem
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :characters
  has_many :sections, as: :sectional, validate: false

  validates :name, :publisher, presence: true

  field :name
  field :publisher
  field :description

end
