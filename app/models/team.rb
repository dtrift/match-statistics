class Team < ApplicationRecord
  has_many :matches
  has_many :players

  validates :title, :city, presence: true
end
