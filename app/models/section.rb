class Section
  include Mongoid::Document

  belongs_to :sectional, polymorphic: true
  embedded_in :section, polymorphic: true
  embeds_many :traits, cascade_callbacks: true

  validates :name, :publisher, presence: true

  field :name
end
