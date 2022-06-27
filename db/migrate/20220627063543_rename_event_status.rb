class RenameEventStatus < ActiveRecord::Migration[6.1]
  def change
    rename_column :events, :status, :event_status
  end
end
