class AddImageToTweeet < ActiveRecord::Migration[6.1]
  def change
    add_column :tweeets, :image, :string
  end
end
