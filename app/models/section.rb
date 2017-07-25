class Section
  include Mongoid::Document

  belongs_to :sectional, polymorphic: true
  embeds_many :traits, cascade_callbacks: true
  recursively_embeds_many

  validates :name, presence: true

  field :name
end
