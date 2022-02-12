class CreateUnthumbs < ActiveRecord::Migration[6.1]
  def change
    create_table :unthumbs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tweeet, null: false, foreign_key: true
      t.references :comment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
