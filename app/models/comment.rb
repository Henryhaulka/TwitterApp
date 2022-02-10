class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :tweeet
  has_many :sub_comments, dependent: :destroy
  has_many :sub_commenter, through: :sub_comments, source: :user
  has_many :thumbs, dependent: :destroy
  has_many :unthumbs, dependent: :destroy
end
