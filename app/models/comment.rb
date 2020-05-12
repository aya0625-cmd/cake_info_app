class Comment < ApplicationRecord
  belongs_to :counseling
  belongs_to :user
end
