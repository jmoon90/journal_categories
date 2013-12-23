class Category < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :journal_categories,
    inverse_of: :category
  has_many :journal_entries,
    through: :journal_categories,
    inverse_of: :categories
end