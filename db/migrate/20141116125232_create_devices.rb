class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.integer :user_id
      t.string :name
      t.string :deviceid
      t.string :clientkey

      t.timestamps
    end
  end
end
