class Character
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user
  embeds_many :sections, validate: false

  field :character_sheet_id
end
