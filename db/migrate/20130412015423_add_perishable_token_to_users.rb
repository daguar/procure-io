class AddPerishableTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :perishable_token, :string, null: false, default: ""
  end
end
