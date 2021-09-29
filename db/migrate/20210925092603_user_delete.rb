class UserDelete < ActiveRecord::Migration[5.2]
  def change
    execute 'DELETE FROM users;'
  end
end
