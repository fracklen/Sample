class RemoveAdminAccount < ActiveRecord::Migration
  def up
    drop_table :admin_accounts
  end

  def down
  end
end
