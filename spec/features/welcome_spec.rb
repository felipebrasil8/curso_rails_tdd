require 'rails_helper'

feature "Welcomes", type: :feature do
  scenario 'Mostra a mensagem bem vindo' do
  	visit('/')

  	expect(page).to have_content('Bem-Vindo')
	end

	scenario 'Deve ter o link de deck' do
  	visit('/')

  	expect(page).to have_link('Deck')
	end

	scenario 'Deve ter o link de deck' do
  	visit('/')

  	click_on('Deck')

    expect(page).to have_content('Decks')
	end
end
