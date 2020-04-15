require 'rails_helper'

RSpec.describe MatchStatistic, type: :model do
  describe 'associations' do
    it { should have_many :players }
    it { should have_many :matches }
  end

  describe 'validations' do
    it { should validate_inclusion_of(:productivity).in_range(0..100) }
    it { should validate_inclusion_of(:distance_covered).in_range(0..25) }
  end

  let(:teams) { create_list :team, 2 }
  let(:player) { create :player, team: teams.first }
  let(:some_match) { create :match, city: 'MSK' }

  let(:match_statistic) {
    create :match_statistic,
    player_id: player,
    match_id: some_match,
    distance_covered: 15,
    productivity: 95
  }

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
