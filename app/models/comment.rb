class Comment < ApplicationRecord
  belongs_to :work
  belongs_to :user
  has_rich_text :body
  belongs_to :parent, class_name: "Comment", optional: true
  has_many :replies, class_name: "Comment", foreign_key: :parent_id
end
