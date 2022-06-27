class DropCategories < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :category_id
    drop_table :categories
  end
end
