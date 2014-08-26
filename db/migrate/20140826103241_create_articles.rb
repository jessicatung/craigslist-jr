class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.float :price
      t.text :description
      t.string :category_name
      t.string :email
      t.string :secret_key
      t.belongs_to :category
      t.timestamps
    end
  end
end
