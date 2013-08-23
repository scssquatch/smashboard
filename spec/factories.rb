FactoryGirl.define do
  factory :office do
    name Faker::Address.city
    selected false
  end

  factory :project do
    name Faker::Commerce.product_name
  end
end
