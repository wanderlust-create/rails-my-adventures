require 'rails_helper'

RSpec.describe City, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:country) }
  end
  describe 'relationships' do
    it { should have_many(:events) }
    it { should have_many(:user_cities) }
    it { should have_many(:users).through(:user_cities) }
  end
end
