require 'rails_helper'

RSpec.describe Match, type: :model do
  describe 'associations' do
    it { should have_many :matches_teams }
  end

  describe 'validations' do
    it { should validate_presence_of :date }
  end
end
