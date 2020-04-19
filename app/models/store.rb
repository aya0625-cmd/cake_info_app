class Store < ApplicationRecord
  has_many :products
  belongs_to :category
  def self.search(search)
    if search
      Store.where(' name LIKE ? ', "%#{search}%")
    else 
      Store.all
    end
  end
end
