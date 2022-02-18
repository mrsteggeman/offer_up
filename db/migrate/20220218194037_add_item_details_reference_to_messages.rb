class AddItemDetailsReferenceToMessages < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :messages, :items, column: :item_details_id
    add_index :messages, :item_details_id
    change_column_null :messages, :item_details_id, false
  end
end
