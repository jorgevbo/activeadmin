class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.string :description
      t.decimal :price
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end