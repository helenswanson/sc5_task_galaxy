class RemoveTaskLists < ActiveRecord::Migration
  def change
    remove_column :name, :description, :user_id, :timestamps
  end
end


