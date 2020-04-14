class CreateMatchStatistics < ActiveRecord::Migration[5.2]
  def change
    create_table :match_statistics do |t|
      t.references :player, foreign_key: true
      t.references :match, foreign_key: true
      t.decimal :distance_covered, null: false, default: 0
      t.decimal :productivity, null: false, default: 0

      t.timestamps
    end
  end
end
