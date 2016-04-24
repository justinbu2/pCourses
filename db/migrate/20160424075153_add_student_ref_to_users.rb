class AddStudentRefToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :Student, index: true, foreign_key: true
  end
end
