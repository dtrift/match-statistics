class Team < ApplicationRecord
  has_many :players
  has_many :host_teams, class_name: 'Team', foreign_key: 'host_id'
  has_many :guest_teams, class_name: 'Team', foreign_key: 'guest_id'

  validates :title, :city, presence: true
end
