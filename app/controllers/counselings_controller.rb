class CounselingsController < ApplicationController
  def index
    @counseling = Counseling.includes(:user).order("created_at DESC").limit(9)
  end

  def new
   @counseling = Counseling.new
  end

  def create
    @counseling = Counseling.create(counseling_params)
    if @counseling.save!
      redirect_to  counselings_path
    else
      render :new
    end
  end

  def show 
    @counseling = Counseling.find(params[:id])
    @comment = Comment.new
    @comments = @counseling.comments.includes(:user)
  end

  private

  def counseling_params
    params.require(:counseling).permit(:kind, :text).merge(user_id: current_user.id)
  end
end
