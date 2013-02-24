class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :person_id
      t.integer :priority
      t.string :name
      t.string :note
      t.datetime :cancelled_at

      t.timestamps
    end
  end
end
