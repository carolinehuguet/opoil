class ChangeDogIdColumnNullForWalks < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:walks, :dog_id, true)
  end
end
