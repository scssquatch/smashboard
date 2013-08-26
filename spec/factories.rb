FactoryGirl.define do
  factory :office do
    name Faker::Address.city
    selected false
  end

  factory :project do
    name Faker::Commerce.product_name
  end

  factory :pivotal do
    name "Pivotal Tracker"
    token "0af2b1a765c48c454be77cd161c5b44c"
    metric_project_id "880442"
  end
end
