class Message < ApplicationRecord
  belongs_to :category
  has_many :goods, dependent: :destroy
  has_many :gooded_users, through: :goods, source: :user #ニュースが誰にいいねされているのか取得する
  def self.search(search)
    if search
      Message.where('title LIKE(?)', "%#{search}%")
      Message.where('text LIKE(?)', "%#{search}%")
    else 
      Message.all
    end  
  end
end
