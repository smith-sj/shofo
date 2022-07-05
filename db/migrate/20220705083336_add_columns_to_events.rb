class AddColumnsToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :address_line_1, :string
    add_column :events, :address_line_2, :string
    add_column :events, :city, :string
    add_column :events, :state, :string
  end
end
