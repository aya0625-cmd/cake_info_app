class StoresController < ApplicationController
  before_action :move_to_index, except: [:index, :search]
  def index
    @parents = Category.all.where("ancestry IS NULL").limit(4)
    
  end

  def search
    @stores =Store.search(params[:keyword])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  
end
