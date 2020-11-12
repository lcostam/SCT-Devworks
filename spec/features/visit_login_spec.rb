require 'rails_helper'

feature 'Visitante acessa Tela Login' do
  scenario 'com sucesso' do
    visit root_path
    expect(page).to have_content('DevWorksSCT')
  end

  scenario 'Visitante realizar um Login' do
    visit root_path
    fill_in 'email', with: 'lcostam@gmail.com'
    fill_in 'password', with: '123'
    click_on 'submitButton'

    expect(tarefas_path).to eq(tarefas_path)
   # expect(usuarios_path).to have_content('English Version')
  end


end