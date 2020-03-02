FactoryBot.define do
  factory :rate do
    ddd_origin { nil }
    ddd_destiny { nil }
    amount_min { 1 }
    name_plan { "MyString" }
    price_plan { 1.5 }
    price_surplus { 1.5 }
  end
end
