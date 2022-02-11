require 'rails_helper'
RSpec.describe SubComment, type: :model do
  describe 'a SubComment Association' do
    it { should belong_to(:user) }
    it { should belong_to(:comment) }
    it { should respond_to(:body) }
  end
end
