class AddResultToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :record, :integer, default:0
  end
end
