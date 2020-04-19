class CategoriesController < ApplicationController
  #before_action :set_category

  def index
    @stores = Category.all.includes(:stores) 
    
  end

  
          
end
