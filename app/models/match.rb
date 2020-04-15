class Match < ApplicationRecord
  has_many :matches_teams, dependent: :nullify
  has_many :teams, through: :matches_teams

  validates :city, :date, presence: true
end
