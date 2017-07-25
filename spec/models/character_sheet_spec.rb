require 'rails_helper'

RSpec.describe CharacterSheet, type: :model do
  it { should belong_to :game_system }
  it { should have_many :sections }
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should have_fields :name, :description }
end
