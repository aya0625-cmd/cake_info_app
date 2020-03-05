class ProductsController < ApplicationController
  def index
  end

  def search
    @products = Product.search(params[:name])
  end
end
