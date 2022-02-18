json.extract! message, :id, :content, :item_details_id, :sender_id, :created_at, :updated_at
json.url message_url(message, format: :json)
