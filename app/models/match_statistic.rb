class MatchStatistic < ApplicationRecord
  belongs_to :player
  belongs_to :match

  validates_inclusion_of :productivity, in: 0..100
  validates_inclusion_of :distance_covered, in: 0..25

  scope :top_five_for, ->(team) { where('team_id = ?', team)
                                  .order(productivity: :desc)
                                  .first(5) }

  scope :top_five, -> { order(productivity: :desc).first(5) }

  def distance_completed?
    distance_covered > MatchStatisticsHelper::SUCCESS_DISTANCE
  end

  def productivity_completed?
    productivity > MatchStatisticsHelper::SUCCESS_PRODUCTIVITY
  end
end
