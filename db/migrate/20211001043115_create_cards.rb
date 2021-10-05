class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :image
      t.text :description
      # t.integer :attr
      t.integer :nivel
      t.integer :atk
      t.integer :def
      # t.integer :type

      t.timestamps
    end
  end
end
