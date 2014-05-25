# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :video do
    title "MyString"
    description "MyText"
    file "MyString"
    plays 1
  end
end
