class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.string :title
      t.string :tags
      t.integer :likes

      t.timestamps
    end
  end
end
