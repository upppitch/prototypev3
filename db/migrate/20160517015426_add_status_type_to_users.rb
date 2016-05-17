class AddStatusTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :status_type, :string
  end
end
