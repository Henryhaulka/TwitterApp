class AddBodyToSubComments < ActiveRecord::Migration[6.1]
  def change
    add_column :sub_comments, :body, :text
  end
end
