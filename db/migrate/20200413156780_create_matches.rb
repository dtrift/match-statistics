class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.references :host
      t.references :guest
      t.datetime :date, null: false

      t.timestamps
    end
  end
end
