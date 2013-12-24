require 'spec_helper'

describe JournalCategory do
  it { should belong_to :journal_entry }
  it { should belong_to :category }

  it { should validate_uniqueness_of(:journal_entry_id).scoped_to(:category_id) }

  it { should validate_presence_of :journal_entry }
  it { should validate_presence_of :category }
end
