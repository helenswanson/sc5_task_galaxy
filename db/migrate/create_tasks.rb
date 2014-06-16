class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.string :description
      t.string :due_date
      t.integer :user_id, null: false
      t.integer :task_list_id, null: false

      t.timestamps
    end
  end
end
