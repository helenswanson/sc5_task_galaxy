class Task < ActiveRecord::Base
  belongs_to :users, :task_lists

  validates :name, presence: true
end
