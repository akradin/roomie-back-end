class AddChoreRefToUser < ActiveRecord::Migration
  def change
    add_reference :users, :chore, index: true, foreign_key: true
  end
end
