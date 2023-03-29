# To deliver this notification:
#
# CommentNotification.with(work: @work).deliver_later(current_user)
# CommentNotification.with(work: @work).deliver(current_user)

class CommentNotification < Noticed::Base
  # Add your delivery methods
  
  deliver_by :database
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"
  
  # Add required params
  #
  param :work

  # Define helper methods to make rendering easier.
  #
  def message
    @work= Work.find(params[:comment][:work_id])
    @comment = Comment.find(params[:comment][:id])
    @user = User.find(@comment.user_id)
    "#{@user.user_name} commented on #{@work.title}: \"#{@comment.body.to_plain_text}...\""
  end
  #
  def url
    work_path(Work.find(params[:comment][:work_id]))
  end
end
