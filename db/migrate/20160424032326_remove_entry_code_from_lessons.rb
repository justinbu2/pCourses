class RemoveEntryCodeFromLessons < ActiveRecord::Migration
  def change
    remove_column :lessons, :entry_code, :string
  end
end
