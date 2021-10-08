require 'rails_helper'

feature 'Decks', type: :feature do
	scenario 'Listar Decks' do
		card = Card.create!(title: "Carta teste")
		deck = Deck.create!(name: "Deck", cards: [card])

  	visit(decks_path)

  	expect(page).to have_content("Decks")

  	expect(page).to have_link("Novo")

  	within('table') do
	  	expect(page).to have_content("Deck")
	  	expect(page).to have_content("1")
  		expect(page).to have_link("Editar")
  		expect(page).to have_link("Deletar")
		end
	end

	scenario 'Novo deck' do
  	visit(new_deck_path)

  	fill_in('Nome', with: 'Deck 1')
  	click_on('Cadastrar')

  	expect(Deck.last.name).to eq('Deck 1')

  	expect(page).to have_current_path(decks_path)

  	expect(page).to have_content('Deck 1')
  	expect(page).to have_content('Deck cadastrado com sucesso.')
	end

	scenario 'Excluir um Deck' do
		deck = Deck.create!(name: "Deck 1")
		another_deck = Deck.create!(name: "Deck 2")

  	visit(decks_path)

  	expect(page).to have_content(deck.name)
  	expect(page).to have_content(another_deck.name)


  # 	within('table') do
  # 		first(:link, 'Excluir').click
		# end

  	# page.driver.browser.switch_to.alert.accept

  	# expect(page).to have_content(deck.name)
  	# expect(page).to_not have_content(another_deck.name)
	end
end