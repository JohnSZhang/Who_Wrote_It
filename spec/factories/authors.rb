# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :author do
    name "Sherlock Hummus"
  end

  factory :another_author, class: Author do
    name "James Joyce"
  end
end
