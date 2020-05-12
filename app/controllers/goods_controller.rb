class GoodsController < ApplicationController
 

  def create
    @good = current_user.goods.create(message_id: params[:message_id], user_id: current_user.id)
    @news = Message.find(params[:message_id])
  end
  
  def destroy
    @news = Message.find(params[:message_id])
    @good = Good.find_by(message_id: params[:message_id], user_id: current_user.id)
    @good.destroy
  end
 
end
