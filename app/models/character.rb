class Character
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user
  embeds_many :sections, as: :subsection, cascade_callbacks: true

  validates :character_sheet_id, presence: true

  field :character_sheet_id
end
