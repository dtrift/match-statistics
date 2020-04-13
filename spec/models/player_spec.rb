require 'rails_helper'

RSpec.describe Player, type: :model do
  describe 'associations' do
    it { should belong_to :team }
  end

  describe 'validations' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :number }
    it { should validate_numericality_of(:number).is_greater_than_or_equal_to(0) }
  end
end
