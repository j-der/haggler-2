class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.string :category
      t.string :address

      t.timestamps null: false
    end
  end
end
