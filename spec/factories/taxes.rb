FactoryBot.define do
  factory :tax do
    ddd_origin { 1 }
    ddd_destiny { 1 }
    amount_min { 1 }
    name_plan { 'MyString' }
    price_plan { 1.5 }
    price_surplus { 1.5 }
  end
end
