class AddProcessedToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :processed, :boolean, default: false
  end
end
