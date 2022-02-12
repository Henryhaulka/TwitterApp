class CreateFollowerships < ActiveRecord::Migration[6.1]
  def change
    create_table :followerships do |t|
      t.integer :sender_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
