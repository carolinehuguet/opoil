class RemovePictureFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :picture
  end
end
