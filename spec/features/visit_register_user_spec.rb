require 'rails_helper'

feature 'Acessar Página Usuarios' do
  scenario 'Lista de usuários' do
    
        visit usuarios_path
      
        puts 'teste' + current_path
        
        expect(current_path).to have_content('Status')
  end

  

end