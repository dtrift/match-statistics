class MatchStatistic < ApplicationRecord
  has_many :players
  has_many :matches

  validates_inclusion_of :productivity, in: 0..100
  validates_inclusion_of :distance_covered, in: 0..25

  def distance_completed?
    distance_covered > MatchStatisticsHelper::SUCCESS_DISTANCE
  end

  def productivity_completed?
    productivity > MatchStatisticsHelper::SUCCESS_PRODUCTIVITY
  end

  def check_index_for_player(player, index)
    
  end
end
