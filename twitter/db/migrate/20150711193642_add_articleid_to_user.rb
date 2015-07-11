class AddArticleidToUser < ActiveRecord::Migration
  def change
    add_column :users, :article_id, :integer
  end
end
