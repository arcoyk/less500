class AddImagesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :icon, :string
    add_column :users, :background, :string
  end
end
