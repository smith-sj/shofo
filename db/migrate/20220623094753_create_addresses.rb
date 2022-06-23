class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :line_1, null: false
      t.string :line_2, null: false
      t.string :suburb, null: false
      t.string :state, null: false
      t.string :postcode, null: false, limit: 4

      t.timestamps
    end
  end
end
