class Comment < ApplicationRecord
  belongs_to :work
  belongs_to :user
  belongs_to :parent, class_name: "Comment", optional: true
  has_many :comments, foreign_key: :parent_id
  has_rich_text :body
  
end
