# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :author do
    name "Sherlock Hummus"
    nationality "USA"
    birth 1988
    sex "M"
  end
  factory :another_author do
    name "James Joyce"
    nationality "Ireland"
    birth 1882
    sex "M"
  end
end
