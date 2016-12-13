class AddCompletedToChores < ActiveRecord::Migration
  def change
    add_column :chores, :completed, :boolean
  end
end
