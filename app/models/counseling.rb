class Counseling < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
 

  validates :kind, :text, presence: true
end