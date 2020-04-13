require 'rails_helper'

RSpec.describe Match, type: :model do
  describe 'associations' do
    it { should have_many :teams }
  end

  describe 'validations' do
    it { should validate_presence_of :host }
    it { should validate_presence_of :guest }
    it { should validate_presence_of :date }
  end
end
