require 'rails_helper'
feature 'Simulate existing plan' do

  scenario 'User can simulate a plan not existing' do
    tax = Tax.create!(ddd_origin: 11, ddd_destiny: 16,
                       amount_min: 30, name_plan: 'Fale30mais',
                       price_plan: 2.9, price_surplus: 3.19)

    visit root_path

    fill_in 'DDD origem', with: 11
    fill_in 'DDD Destino', with: 90
    fill_in 'Qtd Minutos', with: 30
   
    click_button 'Simular'

    expect(page).to have_content('Simulação de Planos Disponiveis')
    expect(page).to have_content('Não existem planos disponiveis')
  
    expect(page).to have_link('Voltar')
  end

  scenario 'User can simulate a plan for him' do
    tax = Tax.create!(ddd_origin: 11, ddd_destiny: 16,
                       amount_min: 30, name_plan: 'Fale30mais',
                       price_plan: 2.9, price_surplus: 3.19)

    sim = Simulation.create!(ddd_origin_user: 11, ddd_destiny_user: 16,
                            amount_user: 30, with_plan: 0.0, without_plan: 87.0)
    visit root_path

    fill_in 'DDD origem', with: 11
    fill_in 'DDD Destino', with: 16
    fill_in 'Qtd Minutos', with: 30
   
    click_button 'Simular'

    expect(page).to have_content('Simulação de Planos Disponiveis')
    
    expect(page).to have_content("Origem: Destino: Qtd Min Simulada: Planos: Com plano: Sem Plano:")
    
    expect(page).to have_content("#{sim.ddd_origin_user}")
    expect(page).to have_content("#{sim.ddd_destiny_user}")
    expect(page).to have_content("#{sim.amount_user}")
    expect(page).to have_content("#{tax.name_plan}")
    expect(page).to have_content("#{sim.with_plan}")
    expect(page).to have_content("#{sim.without_plan}")

    expect(page).to have_link('Voltar')
  end

  scenario 'User can simulate a plan that price surplus' do
    tax = Tax.create!(ddd_origin: 11, ddd_destiny: 16,
                       amount_min: 30, name_plan: 'Fale30mais',
                       price_plan: 2.9, price_surplus: 3.19)

    sim = Simulation.create!(ddd_origin_user: 11, ddd_destiny_user: 16,
                            amount_user: 30, with_plan: 159.5, without_plan: 232.0)
    visit root_path

    fill_in 'DDD origem', with: 11
    fill_in 'DDD Destino', with: 16
    fill_in 'Qtd Minutos', with: 80
   
    click_button 'Simular'

    expect(page).to have_content('Simulação de Planos Disponiveis')
    
    expect(page).to have_content("Origem: Destino: Qtd Min Simulada: Planos: Com plano: Sem Plano:")
    
    expect(page).to have_content("#{sim.ddd_origin_user}")
    expect(page).to have_content("#{sim.ddd_destiny_user}")
    expect(page).to have_content("#{sim.amount_user}")
    expect(page).to have_content("#{tax.name_plan}")
    expect(page).to have_content("#{sim.with_plan}")
    expect(page).to have_content("#{sim.without_plan}")

    expect(page).to have_link('Voltar')
  end

  scenario 'User can simulate a plan that amount minutes less that plan' do
    tax = Tax.create!(ddd_origin: 11, ddd_destiny: 16,
                       amount_min: 30, name_plan: 'Fale30mais',
                       price_plan: 2.9, price_surplus: 3.19)

    sim = Simulation.create!(ddd_origin_user: 11, ddd_destiny_user: 16,
                            amount_user: 25, with_plan: 0.0, without_plan: 72.5)
    visit root_path

    fill_in 'DDD origem', with: 11
    fill_in 'DDD Destino', with: 16
    fill_in 'Qtd Minutos', with: 25
   
    click_button 'Simular'

    expect(page).to have_content('Simulação de Planos Disponiveis')
    
    expect(page).to have_content("Origem: Destino: Qtd Min Simulada: Planos: Com plano: Sem Plano:")
    
    expect(page).to have_content("#{sim.ddd_origin_user}")
    expect(page).to have_content("#{sim.ddd_destiny_user}")
    expect(page).to have_content("#{sim.amount_user}")
    expect(page).to have_content("#{tax.name_plan}")
    expect(page).to have_content("#{sim.with_plan}")
    expect(page).to have_content("#{sim.without_plan}")

    expect(page).to have_link('Voltar')
  end
end
