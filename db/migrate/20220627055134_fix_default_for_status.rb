class FixDefaultForStatus < ActiveRecord::Migration[6.1]
  def change
    change_column_default :events, :status, from: nil, to: 1
  end
end
