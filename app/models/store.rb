class Store < ApplicationRecord
  belongs_to :erea_genre
  has_many :products
  def self.search(search)
    if search
      Store.where(['city LIKE(?) OR prefecture LIKE(?)', "%#{search}%","%#{search}%"])
    else
      Store.all
    end
  end
end
