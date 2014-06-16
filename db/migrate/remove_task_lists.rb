class RemoveTaskLists < ActiveRecord::Migration
  def change
    remove_column :name, :description, :user_id, :timestamps

    # I think this may remove all tasks and not just the ones associated
    #   with a specific task list.
    revert do
      create_table(:tasks) do |t|
        t.string :name
        t.string :description
        t.string :due_date
        t.integer :user_id
        t.integer :task_list_id
        t.timestamps
      end
    end
  end
end


