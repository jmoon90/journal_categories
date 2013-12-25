class AddCategoryIdToJournalEntries < ActiveRecord::Migration
  def up
    add_column :journal_entries, :category_id, :integer
  end

  def down
    remove_column :journal_entries, :category_id, :integer
  end
end
