class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.references :sport, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.integer :cost
      t.integer :max_participants
      t.float :latitude
      t.float :longitude
      t.string :address
      t.boolean :is_indoor

      t.timestamps
    end
  end
end
