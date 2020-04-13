class Team < ApplicationRecord
  has_many :players

  validates :title, :city, presence: true
end
