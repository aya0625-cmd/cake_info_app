class CommentsController < ApplicationController
   
  def create
    comment = Comment.create(comment_params)
    redirect_to  "/counselings/#{comment.counseling.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, counseling_id: params[:counseling_id])
  end

end
