require 'rails_helper'
feature 'Consult rates' do
  scenario 'I can consult all current rates ' do
    ddd11 = Ddd.create!(code: 011, state: 'SP')
    ddd16 = Ddd.create!(code: 016, state: 'SP') 
    tax1 = Tax.create!(ddd_origin: ddd11, ddd_destiny: ddd16, amount_min: 1,
                         name_plan: 'normal', price_plan: 1.9, price_surplus: 0.0)
    tax2 = Tax.create!(ddd_origin: ddd16, ddd_destiny: ddd11, amount_min: 1, 
                         name_plan: 'normal', price_plan: 2.9, price_surplus: 0.0)
    visit root_path
    click_link "Tarifas e Planos Vigentes"
    expect(page).to have_content("Origem: '#{ddd11.code}' - Destino: '#{ddd16.code}' - R$ Minuto: '#{tax1.price_plan}'- 
                                Plano: normal - R$ Min Excedente: '#{tax1.price_surplus}'")
    expect(page).to have_content("Origem: '#{ddd16.code}' - Destino: '#{ddd11.code}' - R$ Minuto: '#{tax2.price_plan}'- 
                                Plano: normal - R$ Min Excedente: '#{tax2.price_surplus}'")
    expect(page).to have_link('Simulação')
  end
end
