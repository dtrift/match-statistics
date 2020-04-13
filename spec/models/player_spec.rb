require 'rails_helper'

RSpec.describe Player, type: :model do
  describe 'associations' do
    it { should belong_to :team }
    it { should have_many :matches }
  end

  describe 'validations' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :number }
  end
end
