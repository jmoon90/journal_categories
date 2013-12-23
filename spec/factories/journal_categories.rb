FactoryGirl.define do
  factory :journal_category do
    association :journal_entry
    association :category
  end
end