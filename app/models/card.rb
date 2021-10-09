class Card < ApplicationRecord
	has_many :cards_decks
  has_many :decks, through: :cards_decks

  has_one_attached :image
end
