class CardsController < ApplicationController
	def index
		@cards = Card.all
	end

	def new
		@card = Card.new
	end

	# POST
	def create
		@card = Card.new(card_params)
    if @card.save
      redirect_to cards_path, notice: 'Card cadastrado com sucesso.'
    else
       render :new
    end
	end

	private

  def card_params
    params.require(:card).permit(:title, :image, :description, :nivel, :atk, :def)
  end
end