class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweeets, dependent: :destroy
  has_many :followings, class_name: "Followership", foreign_key: "sender_id", dependent: :destroy
  has_many :followers, class_name: "Followership", foreign_key: "receiver_id", dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_tweets, through: :likes, source: :tweeet
  has_many :comments, dependent: :destroy
  has_many :commented_tweets, through: :comments, source: :tweeet
  has_many :sub_comments, dependent: :destroy
  has_many :comment_subs, through: :sub_comments, source: :comment
  has_many :thumbs,  dependent: :destroy
  has_attached_file :avatar, storage: :cloudinary,
                            path: ':id/:style/:filename',
                            styles: { medium: '300x300>' },
                            default_url: 'avatar.png'
  validates_attachment_content_type :avatar, content_type: %r{\Aimage/.*\z}  
end
