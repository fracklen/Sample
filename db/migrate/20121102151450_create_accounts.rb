class CreateAccounts < ActiveRecord::Migration
  def up
    create_table :accounts do |t|
      t.string :username
      t.string :password
      t.datetime :invalidated_at

      t.timestamps
  end

  def down
  end
end
