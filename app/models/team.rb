class Team < ApplicationRecord
  # belongs_to :match
  # has_many :matches
  has_many :players
  # belongs_to :match
  has_many :host_teams, class_name: 'Team', foreign_key: 'host_id'
  has_many :guest_teams, class_name: 'Team', foreign_key: 'guest_id'

  validates :title, :city, presence: true
end
