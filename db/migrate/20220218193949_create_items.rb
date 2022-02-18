class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :price
      t.integer :category_id
      t.string :photo
      t.integer :user_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
