class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.references :host, foreign_key: { to_table: :teams }
      t.references :guest, foreign_key: { to_table: :teams }
      t.datetime :date, null: false

      t.timestamps
    end
  end
end
