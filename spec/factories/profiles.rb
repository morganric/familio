# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    display_name "MyString"
    bio "MyText"
    image "MyString"
    website "MyString"
    dob "2014-05-22"
    location "MyString"
    user_id 1
  end
end
