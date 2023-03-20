class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.integer :user_id, null: false
      t.integer :num, default: 1
      t.integer :payment, default: 0
      t.integer :perfomance, default:0
      t.boolean :win, null: false, default: false
      t.timestamps
    end
  end
end
