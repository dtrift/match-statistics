require 'rails_helper'

RSpec.describe MatchStatistic, type: :model do
  describe 'associations' do
    it { should belong_to :player }
    it { should belong_to :match }
  end

  describe 'validations' do
    it { should validate_inclusion_of(:productivity).in_range(0..100) }
    it { should validate_inclusion_of(:distance_covered).in_range(0..25) }
  end

  let(:match_statistic) { create :match_statistic }

  describe '#distance_completed?' do
    it 'distance covered is success' do
      expect(match_statistic.distance_completed?).to be true
    end
  end

  describe '#productivity_completed?' do
    it 'productivity is success' do
      expect(match_statistic.productivity_completed?).to be true
    end
  end
end
