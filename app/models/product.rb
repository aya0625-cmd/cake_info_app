class Product < ApplicationRecord
  belongs_to :store, foreign_key: 'store_id'
  
end
