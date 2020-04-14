require 'rails_helper'

RSpec.describe Match, type: :model do
  describe 'associations' do
    it { should belong_to :host }
    it { should belong_to :guest }
  end

  describe 'validations' do
    it { should validate_presence_of :date }
  end
end
