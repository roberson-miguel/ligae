# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tax2 = Tax.create!(ddd_origin: 11, ddd_destiny: 16, amount_min: 1, name_plan: "sem plano", price_plan: 1.9, price_surplus: 1.9)
tax3 = Tax.create!(ddd_origin: 16, ddd_destiny: 11, amount_min: 1, name_plan: "sem plano", price_plan: 2.9, price_surplus: 2.9)
tax4 = Tax.create!(ddd_origin: 11, ddd_destiny: 17, amount_min: 1, name_plan: "sem plano", price_plan: 1.7, price_surplus: 1.7)
tax5 = Tax.create!(ddd_origin: 17, ddd_destiny: 11, amount_min: 1, name_plan: "sem plano", price_plan: 2.7, price_surplus: 2.7)
tax6 = Tax.create!(ddd_origin: 11, ddd_destiny: 18, amount_min: 1, name_plan: "sem plano", price_plan: 0.9, price_surplus: 0.9)
tax7 = Tax.create!(ddd_origin: 18, ddd_destiny: 11, amount_min: 1, name_plan: "sem plano", price_plan: 1.9, price_surplus: 1.9)
tax8 = Tax.create!(ddd_origin: 11, ddd_destiny: 16, amount_min: 30, name_plan: "FaleMais30", price_plan: 1.9, price_surplus: 2.09)
tax9 = Tax.create!(ddd_origin: 11, ddd_destiny: 17, amount_min: 60, name_plan: "FaleMais60", price_plan: 1.7, price_surplus: 1.87)
tax10 = Tax.create(ddd_origin: 18, ddd_destiny: 11, amount_min: 120, name_plan: "FaleMais120", price_plan: 1.9, price_surplus: 2.09)