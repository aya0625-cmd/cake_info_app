class CounselingsController < ApplicationController
  def index
    @counseling = Counseling.includes(:user).order('created_at DESC')
  end

  def new
   @counseling = Counseling.new
  end

  def create
    @counseling = Counseling.create(counseling_params)
    if @counseling.save!
      redirect_to root_path
    else
      render :new
    end

  end

  private

  def counseling_params
    params.require(:counseling).permit(:kind, :text)
  end
end
