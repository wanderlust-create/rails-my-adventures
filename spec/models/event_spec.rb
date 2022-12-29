require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:title) }
  end

  describe 'relationships' do
    it { should belong_to(:city) }
    it { should have_many(:user_cities).through(:city) }
    it { should have_many(:users).through(:user_cities) }
  end
end
