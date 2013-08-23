FactoryGirl.define do
  factory :office do
    name Faker::Address.city
    selected false
  end
end
