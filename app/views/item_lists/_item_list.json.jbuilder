json.extract! item_list, :id, :item_details_id, :created_at, :updated_at
json.url item_list_url(item_list, format: :json)
