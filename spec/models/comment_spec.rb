require 'rails_helper'
RSpec.describe Comment, type: :model do
    describe "a Comment Association" do
        it {should belong_to(:user)}
        it {should belong_to(:tweeet)}
        it {should have_many(:sub_comments)}
        it {should have_many(:thumbs)}
        it {should have_many(:unthumbs)}
        it {should respond_to(:body)}
    end
end