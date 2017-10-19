FactoryGirl.define do
  factory :car do
    sequence(:name) { |n| "Car Number #{n}" }
    association :manufacturer, factory: :manufacturer
    color "White"
    year 2000
    mileage 10000
  end
end
