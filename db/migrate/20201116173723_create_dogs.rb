class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :size
      t.string :breed
      t.string :description
      t.string :picture
      t.integer :rate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
