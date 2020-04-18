class AddTeamIdToMatchStatistics < ActiveRecord::Migration[5.2]
  def change
    add_reference :match_statistics, :team, foreign_key: true  
  end
end
