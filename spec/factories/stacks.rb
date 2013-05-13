# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :stack do
    name { Faker::Name.name }
    description "Lorem Ipsum"
    is_custom false
  end
  
end


