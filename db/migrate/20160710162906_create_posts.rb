class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :image_url, default: ""
      t.string :user_id
      t.timestamps
    end
  end
end
