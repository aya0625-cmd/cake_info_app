class CategoriesController < ApplicationController

  def index
    @news = Categories.find(params[:id])
  end
end
