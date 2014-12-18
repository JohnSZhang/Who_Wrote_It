# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    title "One Hundred Years of Solitude"
    content "Many years later, as he faced the firing squad, Colonel Aureliano Buendía was to remember that distant afternoon when his father took him to discover ice."
    author
  end

  factory :another_book, class: Book do
    title "Two Hundred Years of Solitude"
    content "Not that Many years later, to remember that distant afternoon when his father took him to discover ice."
    association :author, factory: :another_author
  end
end
