class RemoveAddressFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :address, :string
  end
end
