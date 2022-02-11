require 'rails_helper'
RSpec.describe Tweeet, type: :model do
  describe 'a Tweeet Association' do
    it { should belong_to(:user) }
    it { should have_many(:likes) }
    it { should have_many(:comments) }
    it { should have_many(:thumbs) }
    it { should have_many(:unthumbs) }
    it { should respond_to(:image) }
  end
end
