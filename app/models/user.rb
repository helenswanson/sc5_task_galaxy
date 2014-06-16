class User < ActiveRecord::Base
  has_many :tasks, :task_lists
  belongs_to :task_lists

  validates :email, presence: true
end
