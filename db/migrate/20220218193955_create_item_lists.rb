class CreateItemLists < ActiveRecord::Migration[6.0]
  def change
    create_table :item_lists do |t|
      t.integer :item_details_id

      t.timestamps
    end
  end
end
