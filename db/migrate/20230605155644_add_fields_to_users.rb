class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :bio, :text
    add_column :users, :gender, :string
  end
end
