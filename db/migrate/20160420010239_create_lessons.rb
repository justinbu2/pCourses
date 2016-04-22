class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :entry_code
      t.string :title
      t.text :intro
      t.references :Teacher, index: true, foreign_key: true
      t.references :Student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
