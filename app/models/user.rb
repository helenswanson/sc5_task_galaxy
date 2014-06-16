class User < ActiveRecord::Base
  has_many :tasks
  has_and_belongs_to_many :task_lists

  validates :email, presence: true
end
