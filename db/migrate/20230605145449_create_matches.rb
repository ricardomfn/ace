class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.string :address
      t.string :type
      t.string :modality
      t.string :winner
      t.integer :score
      t.integer :price
      t.integer :level
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
