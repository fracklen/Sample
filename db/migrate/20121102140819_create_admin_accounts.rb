class CreateAdminAccounts < ActiveRecord::Migration
  def change
    create_table :admin_accounts do |t|
      t.string :username
      t.string :password
      t.datetime :invalidated_at

      t.timestamps
    end
  end
end
