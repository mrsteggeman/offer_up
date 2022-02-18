class ItemListResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :item_details_id, :integer

  # Direct associations

  # Indirect associations
end
