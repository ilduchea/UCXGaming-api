class Section
  include Mongoid::Document

  belongs_to :sectional, polymorphic: true
  embedded_in :subsection, polymorphic: true
  embeds_many :traits, cascade_callbacks: true
  embeds_many :sections, as: :subsection, cascade_callbacks: true

  validates :name, presence: true

  field :name
end
