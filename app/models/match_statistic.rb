class MatchStatistic < ApplicationRecord
  has_many :players
  has_many :matches

  def distance_completed?
    player.distance > DISTANCE
  end

  def productivity_completed?
    player.productivity > PRODUCTIVITY
  end
end
