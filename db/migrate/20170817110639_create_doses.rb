class CreateDoses < ActiveRecord::Migration[5.1]
  def change
    create_table :doses do |t|
      t.references :ingredient, foreign_key: true
      t.string :description
      t.references :cocktail, foreign_key: true

      t.timestamps
    end
  end
end
