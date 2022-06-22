class ChangeDateOfBirthToNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :date_of_birth, false
  end
end
