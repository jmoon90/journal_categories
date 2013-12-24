require 'spec_helper'

describe Category do

  it { should validate_presence_of :name }
  it { should have_many :journal_categories }
  it { should have_many(:journal_entries).through(:journal_categories) }
  it { should validate_uniqueness_of :name }
end
