class ItemResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :title, :string
  attribute :price, :string
  attribute :category_id, :integer
  attribute :photo, :string
  attribute :user_id, :integer
  attribute :comment_id, :integer

  # Direct associations

  belongs_to :category

  # Indirect associations

end
