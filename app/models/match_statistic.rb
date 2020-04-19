class MatchStatistic < ApplicationRecord
  belongs_to :player
  belongs_to :match
  belongs_to :team

  validates_inclusion_of :productivity, in: 0..100
  validates_inclusion_of :distance_covered, in: 0..25

  scope :top_five_for, ->(team) {
    joins(:team).where(teams: { id: team})
      .order(productivity: :desc)
      .first(5)
    }

  scope :top_five, -> { order(productivity: :desc).first(5) }

  before_save :set_stat!

  def distance_completed?
    distance_covered > MatchStatisticsHelper::SUCCESS_DISTANCE
  end

  def productivity_completed?
    productivity > MatchStatisticsHelper::SUCCESS_PRODUCTIVITY
  end

  private

  def set_stat!
    self.productivity_success = productivity_completed?
    self.distance_success = distance_completed?
  end
end
