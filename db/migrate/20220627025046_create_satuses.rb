class CreateSatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :satuses do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
