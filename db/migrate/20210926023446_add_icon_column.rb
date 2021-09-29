class AddIconColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :image, :string
    add_column :users, :icon, :string
  end
end
