class Comment < ApplicationRecord
  belongs_to :work
  belongs_to :user
  belongs_to :parent, class_name: "Comment", optional: true
  has_many :comments, foreign_key: :parent_id
  has_rich_text :body
  after_create_commit :notify_recipient
  before_destroy :cleanup_nofitication
  has_noticed_notifications model_name: "Notification"
  private

  def notify_recipient
    CommentNotification.with(comment: self, work: work).deliver_later(work.user)
  end

  def cleanup_nofitication
    notifications_as_comment.destroy_all
  end
end
