class AddSecretToTickets < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :secret, :uuid, default: 'uuid_generate_v4()', null: false
  end
end
