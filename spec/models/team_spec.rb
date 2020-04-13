require 'rails_helper'

RSpec.describe Team, type: :model do
  describe 'associations' do
    it { should have_many :players }
  end

  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :city }
  end
end
