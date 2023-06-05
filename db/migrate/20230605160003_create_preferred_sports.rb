class CreatePreferredSports < ActiveRecord::Migration[7.0]
  def change
    create_table :preferred_sports do |t|
      t.string :skill_level
      t.references :user, null: false, foreign_key: true
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
