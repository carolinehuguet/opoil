class ChangeDescriptionToBeTextInDogsAndUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :dogs, :description, :text
    change_column :users, :description, :text
  end
end
