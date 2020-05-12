class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments
  has_many :counselings
  has_many :goods, dependent: :destroy
  has_many :gooded_messages, through: :goods, source: :message #userがどのニュースにいいねをしているか取得する
  validates :name,presence: true

  def already_gooded?(message)
    self.goods.exists?(message_id: message.id)
  end
end
