class FixColumnName < ActiveRecord::Migration
  def up
  end
  
  def change
    rename_column :accounts, :type, :account_type
  end

  def down
  end
end
