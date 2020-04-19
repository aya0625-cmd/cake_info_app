class EreaGenre < ApplicationRecord
  belongs_to :parent_id
  has_many :cake_erea_genres
  has_many :cake, through: :cake_erea_genres
  has_many :stores

end
