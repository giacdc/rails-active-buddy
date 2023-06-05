class CreateFeelings < ActiveRecord::Migration[7.0]
  def change
    create_table :feelings do |t|
      t.integer :feeling
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
