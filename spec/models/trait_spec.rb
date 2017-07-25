require 'rails_helper'

RSpec.describe Trait, type: :model do
  it { should embed_in :section }
end
