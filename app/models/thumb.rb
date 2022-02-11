class Thumb < ApplicationRecord
  belongs_to :user
  belongs_to :comment
  belongs_to :tweeet, class_name: 'Tweeet'
end
