class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :dir1
      t.string :dir2
      t.float :amount
      t.text :description
      t.integer :account1_id
			t.integer :account2_id
      t.timestamps
    end
    add_index :transactions, :account1_id
    add_index :transactions, :account2_id
  end
end
