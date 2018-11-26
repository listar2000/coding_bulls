 class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :categories
  has_many :follow_me, :class_name => 'Follow', :foreign_key => 'followed_id'
  has_many :me_follow, :class_name => 'Follow', :foreign_key => 'follower_id'
end
