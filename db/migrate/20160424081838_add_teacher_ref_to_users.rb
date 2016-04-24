class AddTeacherRefToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :Teacher, index: true, foreign_key: true
  end
end
