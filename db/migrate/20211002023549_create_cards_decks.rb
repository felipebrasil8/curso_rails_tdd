class CreateCardsDecks < ActiveRecord::Migration[5.2]
  def change
    create_table :cards_decks, id: false do |t|
      t.belongs_to :card
      t.belongs_to :deck
    end
  end
end
