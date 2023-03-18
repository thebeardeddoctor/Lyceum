class Work < ApplicationRecord
 belongs_to :user
 validates :title, presence: true
 validates :goal, presence: true
 validates :timeline, presence: true
 has_rich_text :body
 has_many :comments, dependent: :destroy
end
