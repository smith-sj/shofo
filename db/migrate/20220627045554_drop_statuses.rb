class DropStatuses < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :status_id
    drop_table :statuses
  end
end
