class AddResultToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :result, :integer
  end
end
