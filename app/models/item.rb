class Item < ApplicationRecord
  # Direct associations

  has_many   :messages,
             :foreign_key => "item_details_id",
             :dependent => :destroy

  belongs_to :category,
             :counter_cache => true

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    title
  end

end
