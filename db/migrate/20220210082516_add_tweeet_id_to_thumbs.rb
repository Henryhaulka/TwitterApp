class AddTweeetIdToThumbs < ActiveRecord::Migration[6.1]
  def change
    add_column :thumbs, :tweeet_id, :integer
  end
end
