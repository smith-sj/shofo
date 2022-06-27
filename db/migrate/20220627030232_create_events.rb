class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    rename_table :satuses, :statuses
    create_table :events do |t|
      t.string :title, null: false
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
      t.string :address, null: false
      t.string :venue
      t.boolean :private, default: false, null: false
      t.integer :capacity
      t.integer :price, default: 0, null: false
      t.references :user, null: false, foreign_key: true
      t.references :status, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.string :sub_category

      t.timestamps
    end
  end
end
