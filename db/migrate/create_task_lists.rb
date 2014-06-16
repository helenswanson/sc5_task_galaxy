class CreateTaskLists < ActiveRecord::Migration
  def change
    create_table :task_lists do |t|
      t.string :name, null: false
      t.string :description
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
