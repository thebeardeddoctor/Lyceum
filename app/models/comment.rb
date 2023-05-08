# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  parent_id  :integer
#  user_id    :integer          not null
#  work_id    :integer          not null
#
# Indexes
#
#  index_comments_on_user_id  (user_id)
#  index_comments_on_work_id  (work_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#  work_id  (work_id => works.id)
#
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
    if self.user != work.user
    CommentNotification.with(comment: self, work: work).deliver_later(work.user)
    end
  end

  def cleanup_nofitication
    notifications_as_comment.destroy_all
  end
end
