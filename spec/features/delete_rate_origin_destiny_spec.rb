require 'rails_helper'
feature 'Delete a rates' do
  scenario 'Admin can delete a plan' do
    

    ddd11 = Ddd.create!(code: 11, state: 'SP')
    ddd16 = Ddd.create!(code: 16, state: 'SP')
    tax = Tax.create!(ddd_origin: ddd11.code, ddd_destiny: ddd16.code,
                       amount_min: 1, name_plan: 'sem plano',
                       price_plan: 1.9, price_surplus: 1.9)

    visit root_path

    click_link 'Tarifas e Planos Vigentes'

    click_link "Deletar", match: :first

    expect(page).to have_content('Plano excluido com sucesso')
  end
end