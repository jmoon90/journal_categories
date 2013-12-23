class JournalEntry < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  has_many :journal_categories,
    inverse_of: :journal_entry
  has_many :categories,
    through: :journal_categories,
    inverse_of: :journal_entries
end
