class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweeets
  has_many :followings, class_name: "Followership", foreign_key: "sender_id"
  has_many :followers, class_name: "Followership", foreign_key: "receiver_id"
  has_attached_file :avatar, storage: :cloudinary,
                            path: ':id/:style/:filename',
                            styles: { medium: '300x300>' },
                            default_url: 'avatar.png'
  validates_attachment_content_type :avatar, content_type: %r{\Aimage/.*\z}  
end
