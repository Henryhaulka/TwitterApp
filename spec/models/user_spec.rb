RSpec.describe User, type: :model do
  describe 'a User Association' do
    it { should have_many(:tweeets) }
    it { should have_many(:likes) }
    it { should have_many(:comments) }
    it { should have_many(:thumbs) }
    it { should have_many(:unthumbs) }
    it { should respond_to(:avatar) }
  end
end
