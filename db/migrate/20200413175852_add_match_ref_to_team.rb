class AddMatchRefToTeam < ActiveRecord::Migration[5.2]
  def change
    add_reference :teams, :match, foreign_key: true
  end
end
