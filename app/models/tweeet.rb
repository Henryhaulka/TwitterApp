class Tweeet < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :user_likers, through: :likes, source: :user
  has_many :comments, dependent: :destroy
  has_many :users_commented, through: :comments, source: :user
  validates :tweet, presence: true, length: { minimum: 10 }
  has_attached_file :image, storage: :cloudinary,
                            path: ':id/:style/:filename',
                            styles: { medium: '300x300>' },
                            default_url: 'download.png'
  validates_attachment_content_type :image, content_type: %r{\Aimage/.*\z} 
end
