class TaskList < ActiveRecord::Base
  has_many :tasks, :users
  belongs_to :users

  validates :name, presence: true
end
