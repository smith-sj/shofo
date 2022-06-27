class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.references :event, null: false, foreign_key: true
      t.references :holder, null: false, foreign_key: {to_table: :users}
      t.references :seller, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
