class AddTaskRefToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :task, foreign_key: true
  end
end
