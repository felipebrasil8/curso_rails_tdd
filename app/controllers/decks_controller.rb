class DecksController < ApplicationController
	before_action :find_deck, only: [:edit, :update, :destroy]

	def index
		@decks = Deck.left_joins(:cards)
			.select('decks.*, COUNT(cards.id) as card_count')
			.group('decks.id')
			.order("decks.created_at DESC")
	end

	# GET
	def new
		@deck = Deck.new
	end

	# POST
	def create
		@deck = Deck.new(deck_params)
    if @deck.save
      redirect_to decks_path, notice: 'Deck cadastrado com sucesso.'
    else
       redirect_to decks_path, error: @deck.errors
    end
	end

	# GET
  def edit
  end

  # PUT
	def update
    if @deck.update(deck_params)
      redirect_to decks_path, notice: 'Deck atualizado com sucesso.'
    else
       redirect_to decks_path, error: @deck.errors
    end
	end

	def destroy
		if @deck.destroy
      redirect_to decks_path, notice: 'Deck excluído com sucesso.'
     else
       redirect_to decks_path, error: @deck.errors
    end
	end

	private

  def deck_params
    params.require(:deck).permit(:name)
  end

  def find_deck
  	@deck = Deck.find(params[:id])
  end
end