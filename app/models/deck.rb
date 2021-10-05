class Deck < ApplicationRecord
	has_many :cards_decks
  has_many :cards, through: :cards_decks

  validates :name, presence: true, uniqueness: true, length: { maximum: 50 }
end
