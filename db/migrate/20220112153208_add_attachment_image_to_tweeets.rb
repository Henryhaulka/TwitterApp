class AddAttachmentImageToTweeets < ActiveRecord::Migration[6.1]
  def self.up
    change_table :tweeets do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :tweeets, :image
  end
end
