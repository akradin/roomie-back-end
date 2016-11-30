class AddUserToChores < ActiveRecord::Migration
  def change
    add_reference :chores, :user, index: true, foreign_key: true
  end
end
