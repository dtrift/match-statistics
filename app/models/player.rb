class Player < ApplicationRecord
  belongs_to :team
  has_many :match_statistics, dependent: :nullify

  validates :first_name, :last_name, :number, presence: true
  validates :number, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
