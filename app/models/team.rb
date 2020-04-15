class Team < ApplicationRecord
  has_many :matches_teams, dependent: :nullify
  has_many :matches, through: :matches_teams
  has_many :players

  validates :title, :city, presence: true
end
