json.extract! item, :id, :title, :price, :category_id, :photo, :user_id,
              :comment_id, :created_at, :updated_at
json.url item_url(item, format: :json)
