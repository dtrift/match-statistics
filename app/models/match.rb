class Match < ApplicationRecord
  belongs_to :host, class_name: 'Team'
  belongs_to :guest, class_name: 'Team'

  validates :date, presence: true
end
