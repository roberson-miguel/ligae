require 'rails_helper'
feature 'Consult rates' do
  scenario 'User can see all current rates ' do
    tax1 = Tax.create!(ddd_origin: 11, ddd_destiny: 16,
                       amount_min: 1, name_plan: 'sem plano',
                       price_plan: 1.9, price_surplus: 1.9)
    tax2 = Tax.create!(ddd_origin: 16, ddd_destiny: 11,
                       amount_min: 1, name_plan: 'sem plano',
                       price_plan: 2.9, price_surplus: 2.9)
    tax3 = Tax.create!(ddd_origin: 11, ddd_destiny: 16,
                       amount_min: 30, name_plan: 'Fale30mais',
                       price_plan: 2.9, price_surplus: 3.19)
    visit root_path

    click_link 'Tarifas e Planos Vigentes'

    click_link 'Fale30mais'

    expect(page).to have_content("Exibindo Tarifa selecionada")

    expect(page).to have_content("Origem: Destino: R$ Minuto: Plano: R$ Min Excedente:")
    
    expect(page).to have_content("#{tax3.ddd_origin}")
    expect(page).to have_content("#{tax3.ddd_destiny}")
    expect(page).to have_content("#{tax3.price_plan}")
    expect(page).to have_content("Fale30mais")
    expect(page).to have_content("#{tax3.price_surplus}")
                            
  end
end
