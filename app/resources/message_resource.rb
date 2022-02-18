class MessageResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :content, :string
  attribute :item_details_id, :integer
  attribute :sender_id, :integer

  # Direct associations

  belongs_to :item_details,
             resource: ItemResource

  # Indirect associations

end
