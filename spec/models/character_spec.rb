require 'rails_helper'

RSpec.describe Character, type: :model do
  it { should belong_to :user }
  it { should embed_many :sections }
  it { should validate_presence_of :character_sheet_id }
  it { should have_field :character_sheet_id }
end
