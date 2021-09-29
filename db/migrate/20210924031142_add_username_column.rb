class AddUsernameColumn < ActiveRecord::Migration[5.2]
  def change
    execute 'DELETE FROM users;'
    add_column :users, :name, :string, null: false
  end
end
