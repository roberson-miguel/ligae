require 'rails_helper'
feature 'Register a rates' do
  scenario 'Admin can register a plan normal' do
    visit new_tax_path
    fill_in 'Ddd origin', with: 11
    fill_in 'Ddd destiny', with: 16
    fill_in 'Amount min', with: 1
    fill_in 'Price plan', with: 1.9
    fill_in 'Name plan', with: 'normal'
    click_button 'Confirmar registro'
    expect(page).to have_content('Plano criado com sucesso')
    expect(page).to have_content('Exibindo Tarifa selecionada')
    expect(page).to have_content("11")
    expect(page).to have_content("16")
    expect(page).to have_content("1")
    expect(page).to have_content("1.9")
    expect(page).to have_content("normal")
    expect(page).to have_content("1.9")
    expect(page).to have_link('Editar')
    expect(page).to have_link('Simulação')
    expect(page).to have_link('Voltar')
  end

  scenario 'Admin can register a plan Fale30mais' do
    visit new_tax_path
    fill_in 'Ddd origin', with: 11
    fill_in 'Ddd destiny', with: 16
    fill_in 'Amount min', with: 30
    fill_in 'Price plan', with: 1.9
    fill_in 'Name plan', with: 'Fale30mais'
    click_button 'Confirmar registro'
    expect(page).to have_content('Plano criado com sucesso')
    expect(page).to have_content('Exibindo Tarifa selecionada')
    expect(page).to have_content("11")
    expect(page).to have_content("16")
    expect(page).to have_content("30")
    expect(page).to have_content("1.9")
    expect(page).to have_content("Fale30mais")
    expect(page).to have_content("2.09")
    expect(page).to have_link('Editar')
    expect(page).to have_link('Simulação')
    expect(page).to have_link('Voltar')
  end
end
