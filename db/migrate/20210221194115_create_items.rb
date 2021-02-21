class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :user_id
      t.string :image_url
      t.integer :category_id
      t.boolean :available

      t.timestamps
    end
  end
end
