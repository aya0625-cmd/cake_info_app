class Counseling < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :list
  has_many :comments
  belongs_to :user
  validates :kind, :text, presence: true
end