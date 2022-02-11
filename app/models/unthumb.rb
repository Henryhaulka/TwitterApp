class Unthumb < ApplicationRecord
  belongs_to :user
  belongs_to :tweeet
  belongs_to :comment
end
