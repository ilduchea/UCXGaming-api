require 'rails_helper'

RSpec.describe Section, type: :model do
  it { should be_mongoid_document }
  it { should belong_to :sectional }
  it { should be_embedded_in :parent_section }
  it { should embed_many :traits }
  it { should embed_many :child_sections }
  it { should have_field :name }
  it { should validate_presence_of :name }

end
