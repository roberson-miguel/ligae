require 'rails_helper'
feature 'Delete a rates' do
  scenario 'Admin can delete a plan' do
  
    tax = Tax.create!(ddd_origin: 11, ddd_destiny: 16,
                       amount_min: 1, name_plan: 'sem plano',
                       price_plan: 1.9, price_surplus: 1.9)

    visit root_path

    click_link 'Tarifas e Planos Vigentes'

    click_link "Deletar", match: :first

    expect(page).to have_content('Plano excluido com sucesso')
  end
end