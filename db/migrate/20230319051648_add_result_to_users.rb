class AddResultToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :total, :integer, default:0
  end
end
