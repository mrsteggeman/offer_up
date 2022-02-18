class Message < ApplicationRecord
  # Direct associations

  belongs_to :item_details,
             :class_name => "Item",
             :counter_cache => true

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    content
  end

end
