class AddUserToPictures < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM pictures;'
    add_reference :pictures, :user, null:false, index:true
  end

  def down
    remove_reference :pictures, :user, index: true
  end
end
