class MatchStatistic < ApplicationRecord
  has_many :players
  has_many :matches

  def distance_completed?
    distance_covered > MatchStatisticsHelper::DISTANCE
  end

  def productivity_completed?
    productivity > MatchStatisticsHelper::PRODUCTIVITY
  end
end
