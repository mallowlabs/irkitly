class CreateInfrareds < ActiveRecord::Migration
  def change
    create_table :infrareds do |t|
      t.integer :device_id
      t.string :name
      t.string :schedule
      t.text :json

      t.timestamps
    end
  end
end
