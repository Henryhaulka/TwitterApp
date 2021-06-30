class Tweeet < ApplicationRecord
    belongs_to :user
    validates :tweet, presence: true, length: {minimum: 10}
end
