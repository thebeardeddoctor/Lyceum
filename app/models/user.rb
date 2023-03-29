class User < ApplicationRecord
  # Include default devise modules. Others available are::omniauthable
  has_many :works
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable, :timeoutable, :trackable
  validates :user_name, uniqueness: { message: 'That username has already been taken.' }
  has_many :notifications, as: :recipient, dependent: :destroy
end
