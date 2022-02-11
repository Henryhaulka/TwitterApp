require 'rails_helper'
RSpec.describe Followership, type: :model do
    describe "a Followership Association" do
        it {should belong_to(:sender).class_name('User')}
        it {should belong_to(:receiver).class_name('User')}
    end
end
