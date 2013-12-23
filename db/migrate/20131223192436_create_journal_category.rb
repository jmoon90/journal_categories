class CreateJournalCategory < ActiveRecord::Migration
  def change
    create_table :journal_categories do |t|
      t.references :journal_entry, null: false
      t.references :category, null: false

      t.timestamps
    end
  end
end
