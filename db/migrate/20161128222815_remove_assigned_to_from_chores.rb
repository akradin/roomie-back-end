class RemoveAssignedToFromChores < ActiveRecord::Migration
  def change
    remove_column :chores, :assigned_to
  end
end
