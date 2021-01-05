# frozen_string_literal: true

class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :location, null: false
      t.string :image
      t.string :caption
      t.text :description, null: false
      t.string :map_embed_src
      t.integer :user_id, null: false

      t.timestamps null: false
    end

    add_foreign_key :destinations, :users
  end
end
