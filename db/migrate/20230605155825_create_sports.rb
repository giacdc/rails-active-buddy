class CreateSports < ActiveRecord::Migration[7.0]
  def change
    create_table :sports do |t|
      t.string :name
      t.boolean :is_team_sport
      t.references :sport_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
