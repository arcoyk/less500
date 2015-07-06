class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.text :detail
      t.string :icon

      t.timestamps null: false
    end
  end
end
