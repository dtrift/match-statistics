class Match < ApplicationRecord
  has_many :teams

  validates :date, presence: true
end
