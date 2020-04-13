class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :title, null: false
      t.string :city, null: false

      t.timestamps
    end
  end
end
