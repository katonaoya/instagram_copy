class CreatePicturess < ActiveRecord::Migration[5.2]
  def change
    create_table :picturess do |t|
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
