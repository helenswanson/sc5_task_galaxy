class TaskList < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  has_and_belongs_to_many :users

  validates :name, presence: true
end
