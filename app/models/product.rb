class Product < ApplicationRecord
  belongs_to :store


  def self.search(search)
    if search
      Product.where(['name LIKE(?)', "%#{search}%"])
    else
      Product.all
    end
  end
end
