require 'rails_helper'
feature 'Consult rates' do
  scenario 'User can see all current rates ' do
    ddd11 = Ddd.create!(code: 11, state: 'SP')
    ddd16 = Ddd.create!(code: 16, state: 'SP') 
    tax1 = Tax.create!(ddd_origin: ddd11.code, ddd_destiny: ddd16.code, amount_min: 1,
                         name_plan: 'normal', price_plan: 1.9, price_surplus: 1.9)
    tax2 = Tax.create!(ddd_origin: ddd16.code, ddd_destiny: ddd11.code, amount_min: 1, 
                         name_plan: 'normal', price_plan: 2.9, price_surplus: 2.9)
    tax3 = Tax.create!(ddd_origin: ddd11.code, ddd_destiny: ddd16.code, amount_min: 30,
                         name_plan: 'Fale30mais', price_plan: 2.9, price_surplus: 3.19)
    
    visit root_path
    click_link "Tarifas e Planos Vigentes"
    expect(page).to have_content("Origem: #{tax1.ddd_origin} - Destino: #{tax1.ddd_destiny} - R$ Minuto: #{tax1.price_plan} - Plano: normal - R$ Min Excedente: #{tax1.price_surplus}")
    expect(page).to have_content("Origem: #{tax2.ddd_origin} - Destino: #{tax2.ddd_destiny} - R$ Minuto: #{tax2.price_plan} - Plano: normal - R$ Min Excedente: #{tax2.price_surplus}")
    expect(page).to have_content("Origem: #{tax3.ddd_origin} - Destino: #{tax3.ddd_destiny} - R$ Minuto: #{tax3.price_plan} - Plano: Fale30mais - R$ Min Excedente: #{tax3.price_surplus}")
    expect(page).to have_link('Voltar')
  end

end
