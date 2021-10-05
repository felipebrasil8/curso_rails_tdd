class WelcomeController < ApplicationController
	def index
		@cards = ObeliskDeck.cards_list
	end
end