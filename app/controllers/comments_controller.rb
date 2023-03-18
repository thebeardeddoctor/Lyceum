class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_work


  def create
    @comment = @work.comments.create(comment_params)
    @comment.user = current_user
    if @comment.save! 
      flash[:notice] = "comment was saved"
      redirect_to work_path(@work)
    else
      flash[:alert]= "comment was not saved"
      redirect_to work_path(@work)
    end
  end

  def update
  end

  def edit
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to work_path(@work)
  end

  private
  def set_work
    @work = Work.find(params[:work_id])
  end

  def comment_params
    params.require(:comment).permit(:body, :parent_id)
  end
end
