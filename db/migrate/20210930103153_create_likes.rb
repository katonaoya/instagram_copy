class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true
      t.references :picture, foreign_key: true

      t.timestamps
      t.index [:user_id, :picture_id], unique: true
    end
  end
end
