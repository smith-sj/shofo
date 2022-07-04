class ChangeEventsColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :longitude, :decimal
    remove_column :events, :latitude, :decimal
  end
end
