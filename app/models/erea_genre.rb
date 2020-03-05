class EreaGenre < ApplicationRecord
  belongs_to :parent_id, class_name: :EreaGenre
  has_many :children, class_name: :EreaGenre, foreigen_key: :parent_id
end
