class RemovePictureFromDogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :dogs, :picture, :string
  end
end
