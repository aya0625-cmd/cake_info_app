class StoresController < ApplicationController
  def index
    
  end

  def search
    @stores =Store.search(params[:city])
    @stores =Store.search(params[:prefecture])
  end
end
