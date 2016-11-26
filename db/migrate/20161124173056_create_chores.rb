class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.text :name
      t.date :due_date
      t.integer :difficulty
      t.text :assigned_to

      t.timestamps null: false
    end
  end
end
