class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

    t.string :title
    t.text :contents
    t.timestamps null: false
    

      t.timestamps null: false
    end
  end
end