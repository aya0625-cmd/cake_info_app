class Good < ApplicationRecord
  belongs_to :user
  belongs_to :message
  validates_uniqueness_of :message_id, scope: :user_id #一人が一つのニュースに対して、一つしかいいねをつけることができないようにする
end
