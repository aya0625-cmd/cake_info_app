class MessagesController < ApplicationController
  before_action :move_to_index, except: [:index]
  before_action :set_category
  before_action :set_news
  
  def index
    if params[:category_id]
      @news = Message.where({category_id: params[:category_id]}).order("created_at DESC").page(params[:page]).per(6)
      @new = Message.where({category_id: params[:category_id]}).limit(1)
    else 
      @news = Message.all.order("created_at DESC").limit(6)
    end
  end

  

  def search
    @news = Message.search(params[:keyword]).order("created_at DESC").page(params[:page]).per(6)
  end

  def show 
   @news = Message.find(params[:id])
   @good = Good.new
  end


  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  private

  def set_category
    @category = Category.all
  end

  def set_news
    @message = Message.where(params[:message_id])
  end

 
end
