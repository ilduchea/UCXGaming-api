class Character
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :game_system
  # belongs_to :user, validation: false
  has_many :sections, as: :sectional, validate: false

  validates :sheet_name, presence: true

  field :sheet_name
  field :char_sheet, type: Boolean, default: false

  def deep_dup
    binding.pry
    map { |it| it.deep_dup }
  end

  def self.set_new_char cs
    char = cs.deep_dup
    char.created_at = nil
    char.updated_at = nil
    char.char_sheet = false
    char.save
  end
end
