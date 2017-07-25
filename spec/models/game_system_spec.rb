require 'rails_helper'

RSpec.describe GameSystem, type: :model do
  it { should have_many :character_sheets }
  it { should have_many :sections }
  it { should have_fields :name, :publisher, :description }
  it { should validate_presence_of :name }
  it { should validate_presence_of :publisher }
end
