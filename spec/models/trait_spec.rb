require 'rails_helper'

RSpec.describe Trait, type: :model do

  it { should be_mongoid_document }
  it { should be_embedded_in :section }
  it { should validate_presence_of :name }
  it { should have_fields :name, :property }
end
