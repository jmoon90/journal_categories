require 'spec_helper'

describe JournalEntry do
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should have_many :journal_categories }
  it { should have_many(:categories).through(:journal_categories) }
end
