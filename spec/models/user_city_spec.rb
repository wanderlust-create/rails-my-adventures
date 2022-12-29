require 'rails_helper'

RSpec.describe UserCity, type: :model do
  describe 'relationships' do
    it { should belong_to(:user) }
    it { should belong_to(:city) }
  end
end
